/*
 * (C) Copyright 2014
 * Texas Instruments Incorporated.
 * Felipe Balbi <balbi@ti.com>
 *
 * Configuration settings for the TI Beagle x15 board.
 * See ti_omap5_common.h for omap5 common settings.
 *
 * SPDX-License-Identifier:	GPL-2.0+
 */

#ifndef __CONFIG_AM57XX_EVM_H
#define __CONFIG_AM57XX_EVM_H

#include <environment/ti/dfu.h>

#define CONFIG_DRA7XX

#define CONFIG_IODELAY_RECALIBRATION

#define CONFIG_BOARD_EARLY_INIT_F

#define CONFIG_NR_DRAM_BANKS		2

#define CONFIG_ENV_SIZE			(64 << 10)
#define CONFIG_ENV_IS_IN_FAT
#define FAT_ENV_INTERFACE		"mmc"
#define FAT_ENV_DEVICE_AND_PART		"0:1"
#define FAT_ENV_FILE			"uboot.env"

#define CONSOLEDEV			"ttyO2"
#define CONFIG_SYS_NS16550_COM1		UART1_BASE	/* Base EVM has UART0 */
#define CONFIG_SYS_NS16550_COM2		UART2_BASE	/* UART2 */
#define CONFIG_SYS_NS16550_COM3		UART3_BASE	/* UART3 */
#define CONFIG_BAUDRATE			115200

#define CONFIG_SYS_OMAP_ABE_SYSCK

/* Define the default GPT table for eMMC */
#define PARTS_DEFAULT \
	/* Linux partitions */ \
	"uuid_disk=${uuid_gpt_disk};" \
	"name=rootfs,start=2MiB,size=-,uuid=${uuid_gpt_rootfs}\0" \
	/* Android partitions */ \
	"partitions_android=" \
	"uuid_disk=${uuid_gpt_disk};" \
	"name=xloader,start=128K,size=256K,uuid=${uuid_gpt_xloader};" \
	"name=bootloader,size=2304K,uuid=${uuid_gpt_bootloader};" \
	"name=environment,size=256K,uuid=${uuid_gpt_environment};" \
	"name=misc,size=128K,uuid=${uuid_gpt_misc};" \
	"name=reserved,size=256K,uuid=${uuid_gpt_reserved};" \
	"name=efs,size=16M,uuid=${uuid_gpt_efs};" \
	"name=crypto,size=16K,uuid=${uuid_gpt_crypto};" \
	"name=recovery,size=10M,uuid=${uuid_gpt_recovery};" \
	"name=boot,size=10M,uuid=${uuid_gpt_boot};" \
	"name=system,size=768M,uuid=${uuid_gpt_system};" \
	"name=cache,size=256M,uuid=${uuid_gpt_cache};" \
	"name=ipu1,size=1M,uuid=${uuid_gpt_ipu1};" \
	"name=ipu2,size=1M,uuid=${uuid_gpt_ipu2};" \
	"name=userdata,size=-,uuid=${uuid_gpt_userdata}"

#define DFUARGS \
	"dfu_bufsiz=0x10000\0" \
	DFU_ALT_INFO_MMC \
	DFU_ALT_INFO_EMMC \
	DFU_ALT_INFO_RAM \

#include <configs/ti_omap5_common.h>

/* Enhance our eMMC support / experience. */
#define CONFIG_CMD_GPT
#define CONFIG_EFI_PARTITION
#define CONFIG_RANDOM_UUID
#define CONFIG_HSMMC2_8BIT

/* CPSW Ethernet */
#define CONFIG_BOOTP_DNS		/* Configurable parts of CMD_DHCP */
#define CONFIG_BOOTP_DNS2
#define CONFIG_BOOTP_SEND_HOSTNAME
#define CONFIG_BOOTP_GATEWAY
#define CONFIG_BOOTP_SUBNETMASK
#define CONFIG_NET_RETRY_COUNT		10
#define CONFIG_DRIVER_TI_CPSW		/* Driver for IP block */
#define CONFIG_MII			/* Required in net/eth.c */
#define CONFIG_PHY_GIGE			/* per-board part of CPSW */
#define CONFIG_PHYLIB
#define PHY_ANEG_TIMEOUT	16000	/* PHY needs longer aneg time at 1G */

#define CONFIG_SUPPORT_EMMC_BOOT

/* USB xHCI HOST */
#define CONFIG_USB_XHCI_OMAP
#define CONFIG_SYS_USB_XHCI_MAX_ROOT_PORTS 2

#define CONFIG_OMAP_USB_PHY
#define CONFIG_OMAP_USB3PHY1_HOST

/* SATA */
#define CONFIG_BOARD_LATE_INIT
#define CONFIG_SCSI
#define CONFIG_LIBATA
#define CONFIG_SCSI_AHCI
#define CONFIG_SCSI_AHCI_PLAT
#define CONFIG_SYS_SCSI_MAX_SCSI_ID	1
#define CONFIG_SYS_SCSI_MAX_LUN		1
#define CONFIG_SYS_SCSI_MAX_DEVICE	(CONFIG_SYS_SCSI_MAX_SCSI_ID * \
						CONFIG_SYS_SCSI_MAX_LUN)

/*
 * Default to using SPI for environment, etc.
 * 0x000000 - 0x040000 : QSPI.SPL (256KiB)
 * 0x040000 - 0x140000 : QSPI.u-boot (1MiB)
 * 0x140000 - 0x1C0000 : QSPI.u-boot-spl-os (512KiB)
 * 0x1C0000 - 0x1D0000 : QSPI.u-boot-env (64KiB)
 * 0x1D0000 - 0x1E0000 : QSPI.u-boot-env.backup1 (64KiB)
 * 0x1E0000 - 0x9E0000 : QSPI.kernel (8MiB)
 * 0x9E0000 - 0x2000000 : USERLAND
 */
#define CONFIG_SYS_SPI_KERNEL_OFFS      0x1E0000
#define CONFIG_SYS_SPI_ARGS_OFFS        0x140000
#define CONFIG_SYS_SPI_ARGS_SIZE        0x80000

/* SPI SPL */
#define CONFIG_TI_EDMA3
#define CONFIG_SPL_SPI_LOAD
#define CONFIG_SYS_SPI_U_BOOT_OFFS     0x40000

/* SPI */
#undef	CONFIG_OMAP3_SPI
#define CONFIG_TI_SPI_MMAP
#define CONFIG_SF_DEFAULT_SPEED                76800000
#define CONFIG_SF_DEFAULT_MODE                 SPI_MODE_0
#define CONFIG_QSPI_QUAD_SUPPORT

#define AM5728_QSPI_BOOT
 
#ifdef AM5728_QSPI_BOOT
 #include <environment/ti/qspi_am5728.h>

#define CONFIG_ENV_VARS_UBOOT_RUNTIME_CONFIG
#define CONFIG_EXTRA_ENV_SETTINGS \
        DEFAULT_LINUX_BOOT_ENV \
        DEFAULT_QSPI_AM5728_ARGS \
        DEFAULT_FIT_TI_ARGS \
        "console=" CONSOLEDEV ",115200n8\0" \
        "fdtfile=undefined\0" \
        "bootpart=0:2\0" \
        "bootdir=/boot\0" \
        "bootfile=zImage\0" \
        "usbtty=cdc_acm\0" \
        "vram=16M\0" \
        "partitions=" PARTS_DEFAULT "\0" \
        "optargs=\0" \
        "dofastboot=0\0" \
        "findfdt="\
                "if test $board_name = omap5_uevm; then " \
                        "setenv fdtfile omap5-uevm.dtb; fi; " \
                "if test $board_name = dra7xx; then " \
                        "setenv fdtfile dra7-evm.dtb; fi;" \
                "if test $board_name = dra72x-revc; then " \
                        "setenv fdtfile dra72-evm-revc.dtb; fi;" \
                "if test $board_name = dra72x; then " \
                        "setenv fdtfile dra72-evm.dtb; fi;" \
                "if test $board_name = dra71x; then " \
                        "setenv fdtfile dra71-evm.dtb; fi;" \
                "if test $board_name = beagle_x15; then " \
                        "setenv fdtfile am57xx-beagle-x15.dtb; fi;" \
                "if test $board_name = beagle_x15_revb1; then " \
                        "setenv fdtfile am57xx-beagle-x15-revb1.dtb; fi;" \
                "if test $board_name = am572x_idk && test $idk_lcd = no; then " \
                        "setenv fdtfile am572x-idk.dtb; fi;" \
                "if test $board_name = am572x_idk && test $idk_lcd = osd101t2045; then " \
                        "setenv fdtfile am572x-idk-lcd-osd101t2045.dtb; fi;" \
                "if test $board_name = am572x_idk && test $idk_lcd = osd101t2587; then " \
                        "setenv fdtfile am572x-idk-lcd-osd101t2587.dtb; fi;" \
                "if test $board_name = am57xx_evm; then " \
                        "setenv fdtfile am57xx-evm.dtb; fi;" \
                "if test $board_name = am57xx_evm_reva3; then " \
                        "setenv fdtfile am57xx-evm-reva3.dtb; fi;" \
                "if test $board_name = am571x_idk && test $idk_lcd = no; then " \
                        "setenv fdtfile am571x-idk.dtb; fi;" \
                "if test $board_name = am571x_idk && test $idk_lcd = osd101t2045; then " \
                        "setenv fdtfile am571x-idk-lcd-osd101t2045.dtb; fi;" \
                "if test $board_name = am571x_idk && test $idk_lcd = osd101t2587; then " \
                        "setenv fdtfile am571x-idk-lcd-osd101t2587.dtb; fi;" \
                "if test $fdtfile = undefined; then " \
                        "echo WARNING: Could not determine device tree to use; fi; \0" \
        DFUARGS \
        NETARGS \

#endif



#define CONFIG_BOOTCOMMAND \
        "if test ${boot_fit} -eq 1; then "      \
                "run update_to_fit;"    \
        "fi;"   \
        "run findfdt; " \
        "run envboot;" \


#endif /* __CONFIG_AM57XX_EVM_H */
