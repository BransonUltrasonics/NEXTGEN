/*
 * (C) Copyright 2013
 * Texas Instruments Incorporated.
 * Lokesh Vutla	  <lokeshvutla@ti.com>
 *
 * Configuration settings for the TI DRA7XX board.
 * See ti_omap5_common.h for omap5 common settings.
 *
 * SPDX-License-Identifier:	GPL-2.0+
 */

#ifndef __CONFIG_DRA7XX_EVM_H
#define __CONFIG_DRA7XX_EVM_H

#include <environment/ti/dfu.h>

#define CONFIG_DRA7XX
#define CONFIG_BOARD_EARLY_INIT_F

#define CONFIG_IODELAY_RECALIBRATION

#define CONFIG_VERY_BIG_RAM
#define CONFIG_NR_DRAM_BANKS		2
#define CONFIG_MAX_MEM_MAPPED		0x80000000

#ifndef CONFIG_QSPI_BOOT
/* MMC ENV related defines */
#define CONFIG_ENV_IS_IN_MMC
#define CONFIG_SYS_MMC_ENV_DEV		1	/* SLOT2: eMMC(1) */
#define CONFIG_ENV_SIZE			(128 << 10)
#define CONFIG_ENV_OFFSET		0x260000
#define CONFIG_ENV_OFFSET_REDUND	(CONFIG_ENV_OFFSET + CONFIG_ENV_SIZE)
#define CONFIG_SYS_REDUNDAND_ENVIRONMENT
#endif

#if (CONFIG_CONS_INDEX == 1)
#define CONSOLEDEV			"ttyO0"
#elif (CONFIG_CONS_INDEX == 3)
#define CONSOLEDEV			"ttyO2"
#endif
#define CONFIG_SYS_NS16550_COM1		UART1_BASE	/* Base EVM has UART0 */
#define CONFIG_SYS_NS16550_COM2		UART2_BASE	/* UART2 */
#define CONFIG_SYS_NS16550_COM3		UART3_BASE	/* UART3 */
#define CONFIG_BAUDRATE			115200

#define CONFIG_SYS_OMAP_ABE_SYSCK

#ifndef CONFIG_SPL_BUILD
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
	DFU_ALT_INFO_QSPI
#else
/* Discard fastboot in SPL build, to spare some space */
#undef CONFIG_FASTBOOT
#undef CONFIG_USB_FUNCTION_FASTBOOT
#undef CONFIG_CMD_FASTBOOT
#undef CONFIG_ANDROID_BOOT_IMAGE
#undef CONFIG_FASTBOOT_BUF_ADDR
#undef CONFIG_FASTBOOT_BUF_SIZE
#undef CONFIG_FASTBOOT_FLASH
#endif

#ifdef CONFIG_SPL_BUILD
#undef CONFIG_CMD_BOOTD
#ifdef CONFIG_SPL_DFU_SUPPORT
#define CONFIG_SPL_LOAD_FIT_ADDRESS 0x80200000
#define DFUARGS \
	"dfu_bufsiz=0x10000\0" \
	DFU_ALT_INFO_RAM
#endif
#endif

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
#define CONFIG_PHY_TI

/* SPI */
#undef	CONFIG_OMAP3_SPI
#define CONFIG_TI_SPI_MMAP
#define CONFIG_SF_DEFAULT_SPEED                76800000
#define CONFIG_SF_DEFAULT_MODE                 SPI_MODE_0
#define CONFIG_QSPI_QUAD_SUPPORT

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
#define CONFIG_SYS_SPI_KERNEL_OFFS	0x1E0000
#define CONFIG_SYS_SPI_ARGS_OFFS	0x140000
#define CONFIG_SYS_SPI_ARGS_SIZE	0x80000
#if defined(CONFIG_QSPI_BOOT)
#define CONFIG_ENV_IS_IN_SPI_FLASH
#define CONFIG_SYS_REDUNDAND_ENVIRONMENT
#define CONFIG_ENV_SPI_MAX_HZ           CONFIG_SF_DEFAULT_SPEED
#define CONFIG_ENV_SIZE			(64 << 10)
#define CONFIG_ENV_SECT_SIZE		(64 << 10) /* 64 KB sectors */
#define CONFIG_ENV_OFFSET		0x1C0000
#define CONFIG_ENV_OFFSET_REDUND	0x1D0000
#endif

/* SPI SPL */
#define CONFIG_TI_EDMA3
#define CONFIG_SPL_SPI_LOAD
#define CONFIG_SYS_SPI_U_BOOT_OFFS     0x40000

#define CONFIG_SUPPORT_EMMC_BOOT

/* USB xHCI HOST */
#define CONFIG_USB_XHCI_OMAP
#define CONFIG_SYS_USB_XHCI_MAX_ROOT_PORTS 2

#define CONFIG_OMAP_USB_PHY
#define CONFIG_OMAP_USB2PHY2_HOST

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

/* NAND support */
#ifdef CONFIG_NAND
/* NAND: device related configs */
#define CONFIG_SYS_NAND_PAGE_SIZE	2048
#define CONFIG_SYS_NAND_OOBSIZE		64
#define CONFIG_SYS_NAND_BLOCK_SIZE	(128*1024)
#define CONFIG_SYS_NAND_BUSWIDTH_16BIT
#define CONFIG_SYS_NAND_PAGE_COUNT	(CONFIG_SYS_NAND_BLOCK_SIZE / \
					 CONFIG_SYS_NAND_PAGE_SIZE)
#define CONFIG_SYS_NAND_5_ADDR_CYCLE
/* NAND: driver related configs */
#define CONFIG_NAND_OMAP_GPMC
#define CONFIG_NAND_OMAP_ELM
#define CONFIG_SYS_NAND_ONFI_DETECTION
#define CONFIG_NAND_OMAP_ECCSCHEME	OMAP_ECC_BCH8_CODE_HW
#define CONFIG_SYS_NAND_BAD_BLOCK_POS	NAND_LARGE_BADBLOCK_POS
#define CONFIG_SYS_NAND_ECCPOS		{ 2, 3, 4, 5, 6, 7, 8, 9, \
					 10, 11, 12, 13, 14, 15, 16, 17, \
					 18, 19, 20, 21, 22, 23, 24, 25, \
					 26, 27, 28, 29, 30, 31, 32, 33, \
					 34, 35, 36, 37, 38, 39, 40, 41, \
					 42, 43, 44, 45, 46, 47, 48, 49, \
					 50, 51, 52, 53, 54, 55, 56, 57, }
#define CONFIG_SYS_NAND_ECCSIZE		512
#define CONFIG_SYS_NAND_ECCBYTES	14
#define MTDIDS_DEFAULT			"nand0=nand.0"
#define MTDPARTS_DEFAULT		"mtdparts=nand.0:" \
					"128k(NAND.SPL)," \
					"128k(NAND.SPL.backup1)," \
					"128k(NAND.SPL.backup2)," \
					"128k(NAND.SPL.backup3)," \
					"256k(NAND.u-boot-spl-os)," \
					"1m(NAND.u-boot)," \
					"128k(NAND.u-boot-env)," \
					"128k(NAND.u-boot-env.backup1)," \
					"8m(NAND.kernel)," \
					"-(NAND.file-system)"
#define CONFIG_SYS_NAND_U_BOOT_OFFS	0x000c0000
/* NAND: SPL related configs */
#ifdef CONFIG_SPL_NAND_SUPPORT
#define CONFIG_SPL_NAND_AM33XX_BCH
#endif
/* NAND: SPL falcon mode configs */
#ifdef CONFIG_SPL_OS_BOOT
#define CONFIG_CMD_SPL_NAND_OFS		0x00080000 /* os-boot params*/
#define CONFIG_SYS_NAND_SPL_KERNEL_OFFS	0x00200000 /* kernel offset */
#define CONFIG_CMD_SPL_WRITE_SIZE	0x2000
#endif
#endif /* !CONFIG_NAND */

/* Parallel NOR Support */
#if defined(CONFIG_NOR)
/* NOR: device related configs */
#define CONFIG_SYS_MAX_FLASH_SECT	512
#define CONFIG_SYS_FLASH_CFI_WIDTH	FLASH_CFI_16BIT
#define CONFIG_SYS_FLASH_SIZE		(64 * 1024 * 1024) /* 64 MB */
/* #define CONFIG_INIT_IGNORE_ERROR */
#undef CONFIG_SYS_NO_FLASH
#define CONFIG_SYS_FLASH_USE_BUFFER_WRITE
#define CONFIG_SYS_FLASH_PROTECTION
#define CONFIG_SYS_FLASH_CFI
#define CONFIG_FLASH_CFI_DRIVER
#define CONFIG_FLASH_CFI_MTD
#define CONFIG_SYS_MAX_FLASH_BANKS	1
#define CONFIG_SYS_FLASH_BASE		(0x08000000)
#define CONFIG_SYS_MONITOR_BASE		CONFIG_SYS_FLASH_BASE
/* Reduce SPL size by removing unlikey targets */
#ifdef CONFIG_NOR_BOOT
#define CONFIG_ENV_IS_IN_FLASH
#define CONFIG_ENV_SECT_SIZE		(128 * 1024)	/* 128 KiB */
#define MTDIDS_DEFAULT			"nor0=physmap-flash.0"
#define MTDPARTS_DEFAULT		"mtdparts=physmap-flash.0:" \
					"128k(NOR.SPL)," \
					"128k(NOR.SPL.backup1)," \
					"128k(NOR.SPL.backup2)," \
					"128k(NOR.SPL.backup3)," \
					"256k(NOR.u-boot-spl-os)," \
					"1m(NOR.u-boot)," \
					"128k(NOR.u-boot-env)," \
					"128k(NOR.u-boot-env.backup1)," \
					"8m(NOR.kernel)," \
					"-(NOR.rootfs)"
#define CONFIG_ENV_OFFSET		0x001c0000
#define CONFIG_ENV_OFFSET_REDUND	0x001e0000
#endif
#endif  /* NOR support */

#endif /* __CONFIG_DRA7XX_EVM_H */
