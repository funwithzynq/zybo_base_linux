################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ELFSIZE += \
zybo_base_linux_fsbl.elf.size \


# All Target
all: zybo_base_linux_fsbl.elf secondary-outputs

# Tool invocations
zybo_base_linux_fsbl.elf: $(OBJS) ../src/lscript.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM gcc linker'
	arm-xilinx-eabi-gcc -L"C:\Users\phil\git\zybo_base_linux\sw\zybo_base_linux_fsbl\src" -Wl,-T -Wl,../src/lscript.ld -L../../zybo_base_linux_bsp/ps7_cortexa9_0/lib -o "zybo_base_linux_fsbl.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

zybo_base_linux_fsbl.elf.size: zybo_base_linux_fsbl.elf
	@echo 'Invoking: ARM Print Size'
	arm-xilinx-eabi-size zybo_base_linux_fsbl.elf  |tee "zybo_base_linux_fsbl.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EXECUTABLES)$(ELFSIZE)$(S_UPPER_DEPS) zybo_base_linux_fsbl.elf
	-@echo ' '

secondary-outputs: $(ELFSIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
