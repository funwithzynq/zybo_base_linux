/*
 * taster.c
 *
 *  Created on: 26.09.2014
 *      Author: phil
 */


#include <xparameters.h>
#include <stdio.h>
#include <xgpio.h>
#include <xscugic.h>
#include <xil_exception.h>
#include <malloc.h>
//#include <xil_printf.h>

#define LED_DEVICE_ID		XPAR_LEDS_4BITS_DEVICE_ID
#define BTN_DEVICE_ID		XPAR_BTNS_4BITS_DEVICE_ID
#define INTC_DEVICE_ID		XPAR_PS7_SCUGIC_0_DEVICE_ID

#define BTN_INTERRUPT_ID	XPAR_FABRIC_BTNS_4BITS_IP2INTC_IRPT_INTR
#define BTN_INTERRUPT		XGPIO_IR_CH1_MASK
#define BTN_PRIORITY		0xA0	// 160
#define BTN_TRIGGER			0x03	// falling edge

#define LED_MASK			0x0f
#define BTN_MASK			0x0f

static XGpio* led_inst;
static XGpio* btn_inst;
static XScuGic* intc_inst;
static u32 irqcount;

void BtnIsr(void* InstancePtr);

int setupGpio();

int setupInterrupts();

int main(void) {
	int status;
	printf("-- Button Interrupt Test v1.0 --\n");

	led_inst = malloc(sizeof(XGpio));
	if (led_inst == NULL)
		goto sysFailure;

	btn_inst = malloc(sizeof(XGpio));
	if (btn_inst == NULL)
		goto sysFailure;

	intc_inst = malloc(sizeof(XScuGic));
	if (intc_inst == NULL)
		goto sysFailure;

	status = setupGpio();
	if (status != XST_SUCCESS) {
		printf("GPIO Setup failed.\nExit.\n");
		goto sysFailure;
	}

	printf("GPIO init success.\nInitialize Interrupt System.\n");
	status = setupInterrupts();
	if (status != XST_SUCCESS) {
		printf("Interrupt Setup failed.\nExit.\n");
		goto sysFailure;
	}

	printf("System ready.\n");
	while(1) {
	}

	return XST_SUCCESS;

sysFailure:
	printf("System Failure.\n");
	free(led_inst);
	free(btn_inst);
	free(intc_inst);
	return status;
}

void BtnIsr(void* InstancePtr) {
	XGpio *GpioPtr = (XGpio*) InstancePtr;
	static u32 ledstate;
	u32 led;
	u32 btn;

	// disable inerrupts
	XGpio_InterruptDisable(GpioPtr, BTN_INTERRUPT);

	irqcount++;

	if ((XGpio_InterruptGetStatus(GpioPtr) & BTN_INTERRUPT) != BTN_INTERRUPT)
		return;

	btn = XGpio_DiscreteRead(GpioPtr, 1);
	led = XGpio_DiscreteRead(led_inst, 1);
	ledstate += btn;
	XGpio_DiscreteWrite(led_inst, 1, ledstate);


	printf("irqcount: %u", (unsigned int) irqcount);

	(void) XGpio_InterruptClear(GpioPtr, BTN_INTERRUPT);
	XGpio_InterruptEnable(GpioPtr, BTN_INTERRUPT);
}

int setupInterrupts() {
	int status;
	XScuGic_Config* IntcConfig;

	IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
	if (IntcConfig == NULL)
		return XST_FAILURE;

	status = XScuGic_CfgInitialize(intc_inst, IntcConfig, IntcConfig->CpuBaseAddress);
	if (status != XST_SUCCESS)
		return status;

	XScuGic_SetPriorityTriggerType(intc_inst, BTN_INTERRUPT_ID, BTN_PRIORITY, BTN_TRIGGER);

	status = XScuGic_Connect(intc_inst, BTN_INTERRUPT_ID, (Xil_ExceptionHandler)BtnIsr, btn_inst);
	if (status != XST_SUCCESS)
		return status;

	printf("Enable ScuGic,\n");

	XScuGic_Enable(intc_inst, BTN_INTERRUPT_ID);

	printf("Enable Interrupts.\n");

	XGpio_InterruptEnable(btn_inst, BTN_INTERRUPT);
	XGpio_InterruptGlobalEnable(btn_inst);

	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, intc_inst);
	Xil_ExceptionEnable();

	return XST_SUCCESS;

}

int setupGpio() {
	int status;
	XGpio_Config* led_config;
	XGpio_Config* btn_config;

	led_config = XGpio_LookupConfig(LED_DEVICE_ID);
	if (led_config == NULL)
		return XST_FAILURE;

	status = XGpio_CfgInitialize(led_inst, led_config, led_config->BaseAddress);
	if (status != XST_SUCCESS)
		goto exit_failure;

	//status = XGpio_Initialize(btn_inst, BTN_DEVICE_ID);
	btn_config = XGpio_LookupConfig(BTN_DEVICE_ID);
	if (btn_config == NULL)
		goto exit_failure;

	status = XGpio_CfgInitialize(btn_inst, btn_config, btn_config->BaseAddress);
	if (status != XST_SUCCESS)
		goto exit_failure;

	// selbsttest der gpios
	XGpio_SelfTest(led_inst);
	XGpio_SelfTest(btn_inst);

	// setze datenrichtung
	XGpio_SetDataDirection(led_inst, 1,	~LED_MASK);
	XGpio_SetDataDirection(btn_inst, 1, BTN_MASK);

	return XST_SUCCESS;

exit_failure:
	free(led_config);
	free(btn_config);
	free(led_inst);
	free(btn_inst);
	return XST_FAILURE;
}
