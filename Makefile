ARCH = arm
CROSS_COMPILE =
UBOOTDIR = ./u-boot-Digilent-Dev
KERNELDIR = ./Linux-Digilent-Dev

uboot:
	git clone https://github.com/DigilentInc/u-boot-Digilent-Dev.git
	git apply patch.txt
	make -C ${UBOOTDIR} zynq_zed_config
	make -C ${UBOOTDIR}
	cp ${UBOOTDIR}/u-boot sdboot/u-boot.elf
	
kernel:
	git clone https://github.com/DigilentInc/Linux-Digilent-Dev
	make -C ${KERNELDIR} xilinx_zynq_defconfig
	make -C ${KERNELDIR} 
	export PATH=$PATH:${UBOOTDIR}/tools
	make -C ${KERNELDIR} UIMAGE_LOADADDR=0x8000 uImage




	

