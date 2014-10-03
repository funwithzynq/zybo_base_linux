/******************************************************************************
*
* (c) Copyright 2012-2013 Xilinx, Inc. All rights reserved.
*
* This file contains confidential and proprietary information of Xilinx, Inc.
* and is protected under U.S. and international copyright and other
* intellectual property laws.
*
* DISCLAIMER
* This disclaimer is not a license and does not grant any rights to the
* materials distributed herewith. Except as otherwise provided in a valid
* license issued to you by Xilinx, and to the maximum extent permitted by
* applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL
* FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS,
* IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF
* MERCHANTABILITY, NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE;
* and (2) Xilinx shall not be liable (whether in contract or tort, including
* negligence, or under any other theory of liability) for any loss or damage
* of any kind or nature related to, arising under or in connection with these
* materials, including for any direct, or any indirect, special, incidental,
* or consequential loss or damage (including loss of data, profits, goodwill,
* or any type of loss or damage suffered as a result of any action brought by
* a third party) even if such damage or loss was reasonably foreseeable or
* Xilinx had been advised of the possibility of the same.
*
* CRITICAL APPLICATIONS
* Xilinx products are not designed or intended to be fail-safe, or for use in
* any application requiring fail-safe performance, such as life-support or
* safety devices or systems, Class III medical devices, nuclear facilities,
* applications related to the deployment of airbags, or any other applications
* that could lead to death, personal injury, or severe property or
* environmental damage (individually and collectively, "Critical
* Applications"). Customer assumes the sole risk and liability of any use of
* Xilinx products in Critical Applications, subject only to applicable laws
* and regulations governing limitations on product liability.
*
* THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE
* AT ALL TIMES.
*
******************************************************************************/
/*****************************************************************************/
/**
*
* @file xaxivdma_g.c
*
* Provide a template for user to define their own hardware settings.
*
* If using XPS, this file will be automatically generated.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who  Date     Changes
* ----- ---- -------- -------------------------------------------------------
* 1.00a jz   08/16/10 First release
* 2.00a jz   12/10/10 Added support for direct register access mode, v3 core
* 2.01a jz   01/19/11 Added ability to re-assign BD addresses
* 	rkv  04/07/11 added new configuration parameter for enabling read of
*		      video parameters.
* 3.00a srt  08/26/11 Added new parameters for Flush on Frame Sync and Line
*		      Buffer Thresholds.
* 4.00a srt  11/21/11 Added new parameters for Genlock Source and Fsync
*		      Source Selection.
* 4.03a srt  01/18/13 Added TDATA_WIDTH parameters (CR: 691866)
* 4.04a srt	 03/03/13 Support for *_ENABLE_DEBUG_INFO_* debug configuration                       
*			parameters (CR: 703738)
*
* </pre>
*
******************************************************************************/

/***************************** Include Files *********************************/

#include "xaxivdma.h"
#include "xparameters.h"

/************************** Constant Definitions *****************************/

XAxiVdma_Config XAxiVdma_ConfigTable[] =
{
	{
		XPAR_AXIVDMA_0_DEVICE_ID,
		XPAR_AXIVDMA_0_BASEADDR,
		XPAR_AXIVDMA_0_NUM_FSTORES,
		XPAR_AXIVDMA_0_INCLUDE_MM2S,
		XPAR_AXIVDMA_0_INCLUDE_MM2S_DRE,
		XPAR_AXIVDMA_0_M_AXI_MM2S_DATA_WIDTH,
		XPAR_AXIVDMA_0_INCLUDE_S2MM,
		XPAR_AXIVDMA_0_INCLUDE_S2MM_DRE,
		XPAR_AXIVDMA_0_M_AXI_S2MM_DATA_WIDTH,
		XPAR_AXIVDMA_0_INCLUDE_SG,
		XPAR_AXIVDMA_0_ENABLE_VIDPRMTR_READS,
		XPAR_AXIVDMA_0_USE_FSYNC,
		XPAR_AXIVDMA_0_FLUSH_ON_SYNC,
		XPAR_AXIVDMA_0_MM2S_LINEBUFFER_DEPTH,
		XPAR_AXIVDMA_0_S2MM_LINEBUFFER_DEPTH,
		XPAR_AXIVDMA_0_MM2S_GENLOCK_MODE,
		XPAR_AXIVDMA_0_S2MM_GENLOCK_MODE,
		XPAR_AXIVDMA_0_INCLUDE_INTERNAL_GENLOCK,
		XPAR_AXIVDMA_0_S2MM_SOF_ENABLE,
		XPAR_AXIVDMA_0_M_AXIS_MM2S_TDATA_WIDTH,
		XPAR_AXIVDMA_0_S_AXIS_S2MM_TDATA_WIDTH,
		XPAR_AXIVDMA_0_ENABLE_DEBUG_INFO_1,
		XPAR_AXIVDMA_0_ENABLE_DEBUG_INFO_5,
		XPAR_AXIVDMA_0_ENABLE_DEBUG_INFO_6,
		XPAR_AXIVDMA_0_ENABLE_DEBUG_INFO_7,
		XPAR_AXIVDMA_0_ENABLE_DEBUG_INFO_9,
		XPAR_AXIVDMA_0_ENABLE_DEBUG_INFO_13,
		XPAR_AXIVDMA_0_ENABLE_DEBUG_INFO_14,
		XPAR_AXIVDMA_0_ENABLE_DEBUG_INFO_15,
		XPAR_AXIVDMA_0_ENABLE_DEBUG_ALL
	}
};
