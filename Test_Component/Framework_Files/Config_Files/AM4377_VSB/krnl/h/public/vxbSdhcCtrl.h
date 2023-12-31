/* vxbSdhcCtrl.h - SDHC host controller common driver library header */

/*
 * Copyright (c) 2012, 2014-2017 Wind River Systems, Inc.
 *
 * The right to copy, distribute, modify or otherwise make use
 * of this software may be licensed only pursuant to the terms
 * of an applicable Wind River license agreement.
 */

/*
modification history
--------------------
04feb17,mw1  update for IA32_PAE mode (V7STO-764)
06jan17,jsp  add defines for SD/MMC on Intel Apollo Lake  board
17mar16,myt  add support for SD/MMC on AMD Steppe Eagle board (US77313)
14jan16,myt  add the support for eMMC card on zynq7K board (V7STO-529)
30dev15,myt  clean coverity warnings
16nov15,myt  add the support of SD/eMMC on IA arch target for 
             vxBus gen2 (V7STO-399)
04may15,myt  fix SD clock frequency error for nano6060 (V7STO-356)
28nov14,myt  fix the error of DMA address update (V7STO-261)
             add support for Bay Trail (V7STO-260)
13oct14,myt  add sd support in fsl vybrid board (US45085)
27aug14,myt  add sd support for zynq. (US43873)
30may14,lxj  add sd support for quark. (V7STO-178)
22may14,e_d  add UHS-I card support on imx6 AI board. (VXW6-80729)
07may14,e_d  add vxbus Gen2 model support. (US29286)
28aug12,e_d  written.
*/

#ifndef __INCvxbSdhcCtrlh
#define __INCvxbSdhcCtrlh

#ifdef __cplusplus
extern "C" {
#endif

#define POLL_TIMEOUT            0x100000

/* board type */

#define SDHC_HOST_CTRL_FREESCALE     0x01000000
#define SDHC_HOST_CTRL_VYBRID        0x02000000

/* SDHC register offset */

#define SDHC_DSADDR             0x000
#define SDHC_BLKATTR            0x004
#define SDHC_CMDARG             0x008
#define SDHC_XFERTYP            0x00C
#define SDHC_CMDRSP0            0x010
#define SDHC_CMDRSP1            0x014
#define SDHC_CMDRSP2            0x018
#define SDHC_CMDRSP3            0x01C
#define SDHC_DATPORT            0x020
#define SDHC_PRSSTAT            0x024
#define SDHC_PROCTL             0x028
#define SDHC_SYSCTL             0x02C
#define SDHC_IRQSTAT            0x030
#define SDHC_IRQSTATEN          0x034
#define SDHC_IRQSIGEN           0x038
#define SDHC_AUTOC12ERR         0x03C
#define SDHC_HOSTCAPBLT         0x040
#define SDHC_WML                0x044
#define SDHC_FEVT               0x050
#define SDHC_HOSTVER            0x0FC
#define SDHC_DCR                0x40C
#define SDHC_SRST               0x1FC

/* Block Attributes Register */

#define BLKATTR_CNT_SHIFT       16

/* Block Count Size Register */

#define BLKBUFFER_SIZE_4K       0
#define BLKBUFFER_SIZE_8K       1
#define BLKBUFFER_SIZE_16K      2
#define BLKBUFFER_SIZE_32K      3
#define BLKBUFFER_SIZE_64K      4
#define BLKBUFFER_SIZE_128K     5
#define BLKBUFFER_SIZE_256K     6
#define BLKBUFFER_SIZE_512K     7
#define BLKBUFFER_SIZE_SHIFT    12
#define BLKBUFFER_512K_MASK     0xfff80000
#define BLKBUFFER_512K          0x80000

/* Transfter Type Register */

#define XFERTYP_CMDINX(idx)     (((idx) & 0x3f) << 24)
#define XFERTYP_CMDTYP_NORMAL   0x00000000
#define XFERTYP_CMDTYP_SUSPEND  0x00400000
#define XFERTYP_CMDTYP_RESUME   0x00800000
#define XFERTYP_CMDTYP_ABORT    0x00c00000
#define XFERTYP_DATA_PRESENT    0x00200000
#define XFERTYP_CICEN           0x00100000
#define XFERTYP_CCCEN           0x00080000
#define XFERTYP_RSPTYP_NORSP    0x00000000
#define XFERTYP_RSPTYP_LEN136   0x00010000
#define XFERTYP_RSPTYP_LEN48    0x00020000
#define XFERTYP_RSPTYP_LEN48B   0x00030000
#define XFERTYP_MULTI_BLK       0x00000020
#define XFERTYP_DIR_READ        0x00000010
#define XFERTYP_AC12EN          0x00000004
#define XFERTYP_BCEN            0x00000002
#define XFERTYP_DMAEN           0x00000001

/* Present State Register */

#define PRSSTAT_WPSPL           0x00080000
#define PRSSTAT_CDPL            0x00040000
#define PRSSTAT_CINS            0x00010000
#define PRSSTAT_BREN            0x00000800
#define PRSSTAT_BWEN            0x00000400
#define PRSSTAT_DLA             0x00000004
#define PRSSTAT_CDIHB           0x00000002
#define PRSSTAT_CIHB            0x00000001

/* Protocol Control Register */

#define PROCTL_EMODE_MASK       0x00000030
#define PROCTL_EMODE_SHIFT      4
#define PROCTL_D3CD             0x00000008
#define PROCTL_DTW_1BIT         0x00000000
#define PROCTL_DTW_4BIT         0x00000002
#define PROCTL_DTW_8BIT         0x00000020
#define PROCTL_DTW_8BIT_FSL     0x00000004
#define PROCTL_HS_ENABLED       0x00000004
#define PROCTL_VOLT_SEL_SHIFT   9
#define PROCTL_SD_PWR_EN        0x00000100
#define PROCTL_SD_PWR_EN_BTRAIL 0x00001000
#define PROCTL_SDBUS_VOLT_3P3   7
#define PROCTL_SDBUS_VOLT_3P0   6
#define PROCTL_SDBUS_VOLT_1P8   5

/* System Control Register */

#define SYSCTL_INITA            0x08000000
#define SYSCTL_RSTD             0x04000000
#define SYSCTL_RSTC             0x02000000
#define SYSCTL_RSTA             0x01000000
#define SYSCTL_DTOCV_MASK       0x000f0000
#define SYSCTL_DTOCV_SHIFT      16
#define SYSCTL_DTOCV_MAX        14
#define SYSCTL_CLK_MASK         0x0000fff0
#define SYSCTL_FS_SHIFT         8
#define SYSCTL_FS_MAX           256
#define SYSCTL_FS_MIN           2
#define SYSCTL_DVS_SHIFT        4
#define SYSCTL_DVS_MAX          16
#define SYSCTL_DVS_MIN          1
#define SYSCTL_SDCLKEN          0x00000008
#define SYSCTL_PEREN            0x00000004
#define SYSCTL_HCKEN            0x00000002
#define SYSCTL_IPGEN            0x00000001
#define SYSCTL_CLK_STABLE       0x00000002
#define SYSCTL_CLK_EN           0x00000004
#define SYSCTL_DIV_SHIFT        8

/* Interrupt Register */

#define IRQ_DMAE                0x10000000
#define IRQ_AC12E               0x01000000
#define IRQ_DEBE                0x00400000
#define IRQ_DCE                 0x00200000
#define IRQ_DTOE                0x00100000
#define IRQ_CIE                 0x00080000
#define IRQ_CEBE                0x00040000
#define IRQ_CCE                 0x00020000
#define IRQ_CTOE                0x00010000
#define IRQ_CINT                0x00000100
#define IRQ_CRM                 0x00000080
#define IRQ_CINS                0x00000040
#define IRQ_BRR                 0x00000020
#define IRQ_BWR                 0x00000010
#define IRQ_DINT                0x00000008
#define IRQ_BGE                 0x00000004
#define IRQ_TC                  0x00000002
#define IRQ_CC                  0x00000001

#define IRQ_DATA_ERR            (IRQ_DEBE | IRQ_DCE | IRQ_DTOE)
#define IRQ_CMD_ERR             (IRQ_CIE | IRQ_CEBE | IRQ_CCE | IRQ_CTOE)

#define IRQ_DATA                (IRQ_DATA_ERR | IRQ_TC)
#define IRQ_CMD                 (IRQ_CMD_ERR | IRQ_CC)

#define IRQ_ALL                 0xffffffff

/* Auto CMD12 Status Register */

#define AUTOC12ERR_CNIBAC12E    0x00000080
#define AUTOC12ERR_AC12IE       0x00000010
#define AUTOC12ERR_AC12CE       0x00000008
#define AUTOC12ERR_AC12EBE      0x00000004
#define AUTOC12ERR_AC12TOE      0x00000002
#define AUTOC12ERR_AC12NE       0x00000001

/* Host Controller Capabilities Register */

#define HOSTCAPBLT_VS18         0x04000000
#define HOSTCAPBLT_VS30         0x02000000
#define HOSTCAPBLT_VS33         0x01000000
#define HOSTCAPBLT_DMAS         0x00400000
#define HOSTCAPBLT_HSS          0x00200000
#define HOSTCAPBLT_MBL_MASK     0x00070000
#define HOSTCAPBLT_MBL_SHIFT    16
#define HOSTCAPBLT_MBL_512      0x00000000
#define HOSTCAPBLT_MBL_1024     0x00010000
#define HOSTCAPBLT_MBL_2048     0x00020000
#define HOSTCAPBLT_MBL_4096     0x00030000
#define HOSTCAPBLT_FREQ_SHIT    8
#define HOSTCAPBLT_FREQ_MASK    0x3f
#define HOSTCAPBLT_FREQ_MASK_V3 0xff

/* Watermark Level Register */

#define WML_WR_MAX              0x80
#define WML_RD_MAX              0x10
#define WML_RD_MAX_PIO          0x80
#define WML_WR_SHIFT            16

/* Host Controller Version Register */

#define HOSTVER_VVN_MASK        0x0000ff00
#define HOSTVER_VVN_SHIFT       8
#define HOSTVER_SVN_MASK        0x000000ff

#define HOSTVER_VVN_10          0x00000000
#define HOSTVER_VVN_20          0x00000100
#define HOSTVER_SVN_10          0x00000000
#define HOSTVER_SVN_20          0x00000001

/* DMA Control Register */

#define DCR_SNOOP               0x00000040
#define DCR_RD_SAFE             0x00000004
#define DCR_RD_PFE              0x00000002
#define DCR_RD_PF_SIZE_32BYTES  0x00000001

/* SRST Register */

#define RESET_ON                0x00000001
#define RESET_RELEASE           0x00000000

/* clock set mask */

#define CLK_SETMASK             0xFF00

/* PCI SDHC device list  */

#define INTEL_VENDOR_ID				0x8086
#define TOPCLIFF0_DEVICE_ID			0x8809
#define TOPCLIFF1_DEVICE_ID			0x880a
#define QUARK_SD_DEVICE_ID			0x08a7
#define PCI_DEVICE_ID_INTEL_BAY_TRAIL_EMMC_441	0x0f14
#define PCI_DEVICE_ID_INTEL_BAY_TRAIL_SD	0x0f16
#define PCI_DEVICE_ID_INTEL_ATOM_SD_1		0x811C
#define PCI_DEVICE_ID_INTEL_ATOM_SD_2		0x811D
#define PCI_DEVICE_ID_INTEL_ATOM_SD_3		0x811E
#define	PCI_DEVICE_ID_INTEL_ATOM_SDIO		0x5AD0
#define	PCI_DEVICE_ID_INTEL_ATOM_EMMC		0x5ACC
#define	PCI_DEVICE_ID_INTEL_ATOM_SDXC		0x5ACA

#define AMD_VENDOR_ID            0x1022
#define PCI_DEVICE_ID_AMD_SD     0x7813

/* Max sectors per-transfer */

#define SDHC_MAX_RW_SECTORS     2048

#define SDHC_PIO_TIMEOUT        0x1000000

/* insert status and write protect status check type */

enum wpTypes
    {
	  SDHC_WP_NONE,
	  SDHC_WP_CONTROLLER,
	  SDHC_WP_GPIO,
    };

enum cdTypes
    {
	  SDHC_CD_NONE,
	  SDHC_CD_CONTROLLER,
	  SDHC_CD_GPIO,
	  SDHC_CD_PERMANENT,
    };

typedef struct sdhcAttrData
    {
	  UINT32 wpGpio;
	  UINT32 cdGpio;
	  enum wpTypes wptype;
	  enum cdTypes cdtype;
    }SDHC_ATTR_DATA;

/* SDHC PIO Description */

typedef struct sdhcPioDesc
    {
    char *          bufOri;
    char *          bufCur;
    UINT32          blkSize;
    } SDHC_PIO_DESC;

/* SDHC driver control */

typedef struct sdhcDrvCtrl
    {
    SD_HOST_CTRL    sdHostCtrl;
    void *          regHandle;
    void *          pioHandle;
#ifndef _WRS_CONFIG_VXBUS_LEGACY
    VXB_RESOURCE *  intRes;
#else
    void *          regBase;    
#endif /* _WRS_CONFIG_VXBUS_LEGACY */
#if defined (_WRS_CONFIG_LP64) || defined (_WRS_CONFIG_IA32_PAE)
    UINT64          bar;
#else
    UINT32          bar;
#endif
    UINT32          intSts;
    UINT32          intMask;
    UINT32          flags;
    UINT32          clkSrc;
    UINT32          tuningMin;
    UINT32          tuningMax;
    UINT32          tuningStep;
    BOOL            highSpeed;
    TASK_ID         monTaskId;
    SDHC_PIO_DESC   pioDesc;
    SDHC_ATTR_DATA  attrData;
    UINT32          sdmaAddr;
    UINT32          sdmaAddrBound; 
    BOOL            embedded;         
    BOOL            noWPCheck;        
    UINT32          maxDevClkFreq;    
    } SDHC_DEV_CTRL;

/* SDHC driver name */

#define FSL_SDHC_NAME               "fslSdhci"
#define INTEL_SDHC_NAME             "intelSdhci"
#define IMX_SDHC_NAME               "imxSdhci"
#define ZYNQ_SDHC_NAME              "zynqSdhci"

/* SDHC card monitor task priority */

#define SDHC_CARD_MON_TASK_PRI      100

/* SDHC card monitor task stack size */

#define SDHC_CARD_MON_TASK_STACK    8192

/* SDHC DMA mode supported */

#define SDHC_DMA_MODE_DEFAULT       0
#define SDHC_DMA_MODE_SDMA          0
#define SDHC_DMA_MODE_PIO           1
#define SDHC_DMA_MODE_ADMA1         2
#define SDHC_DMA_MODE_ADMA2         3

/* total number of DMA transfer modes */

#define SDHC_DMA_MODES_NR           4

/* seconds to wait for SD/MMC command or data done */

#define SDMMC_CMD_WAIT_IN_SECS      10

/* seconds to wait for SD/MMC R1B command's data interrupt */

#define SDMMC_CMD_WAIT_IN_SECS_R1B  3

/* SD/MMC card monitor task check status change delay */

#define SDMMC_CARDMON_DELAY_SECS    2

/* register low level access routines */

#ifdef _WRS_CONFIG_VXBUS_LEGACY
#define SDHC_BAR(p)         ((SDHC_DEV_CTRL *)(p)->pDrvCtrl)->regBase
#define SDHC_HANDLE(p)      ((SDHC_DEV_CTRL *)(p)->pDrvCtrl)->regHandle
#else
#define SDHC_BAR(p) 		((SDHC_DEV_CTRL *)vxbDevSoftcGet(p))->bar
#define SDHC_HANDLE(p)      ((SDHC_DEV_CTRL *)vxbDevSoftcGet(p))->regHandle
#endif

#define CSR_READ_4(pDev, addr)              \
        vxbRead32(SDHC_HANDLE(pDev),        \
                  (UINT32 *)((char *)SDHC_BAR(pDev) + addr))

#define CSR_WRITE_4(pDev, addr, data)       \
        vxbWrite32(SDHC_HANDLE(pDev),       \
                   (UINT32 *)((char *)SDHC_BAR(pDev) + addr), data)

#define CSR_SETBIT_4(pDev, offset, val)     \
        CSR_WRITE_4(pDev, offset, CSR_READ_4(pDev, offset) | (val))

#define CSR_CLRBIT_4(pDev, offset, val)     \
        CSR_WRITE_4(pDev, offset, CSR_READ_4(pDev, offset) & ~(val))

/* internal buffer data port access routines */

#define PIO_HANDLE(p)       ((SDHC_DEV_CTRL *)GET_DRVCTRL(p))->pioHandle

#define PIO_READ_4(pDev, addr)              \
        vxbRead32(PIO_HANDLE(pDev),         \
                  (UINT32 *)((char *)SDHC_BAR(pDev) + addr))

#define PIO_WRITE_4(pDev, addr, data)       \
        vxbWrite32(PIO_HANDLE(pDev),        \
                   (UINT32 *)((char *)SDHC_BAR(pDev) + addr), data)
STATUS sdhcCtrlProbe(VXB_DEV_HANDLE);
STATUS sdhcCtrlInstInit2 (VXB_DEV_HANDLE);
STATUS sdhcCtrlInstConnect (SD_HOST_CTRL * pSdHostCtrl);
STATUS sdhcCtrlIsr (VXB_DEV_HANDLE);
STATUS sdhcCtrlCmdIssue (VXB_DEV_HANDLE, SD_CMD *);
STATUS sdhcCtrlCmdPrepare (VXB_DEV_HANDLE, SD_CMD *);
STATUS sdhcCtrlPioRead (VXB_DEV_HANDLE);
STATUS sdhcCtrlPioWrite (VXB_DEV_HANDLE);
STATUS sdhcCtrlCmdIssuePoll (VXB_DEV_HANDLE, SD_CMD *);
STATUS sdhcCtrlInit (VXB_DEV_HANDLE);
STATUS sdhcInterruptInfo (VXB_DEV_HANDLE, UINT32 *);
STATUS sdhcDevControl (VXB_DEV_HANDLE, VXB_DEV_HANDLE);

STATUS sdhcCtrlBusWidthSetup (VXB_DEV_HANDLE, UINT32);
void sdhcCtrlCardMonTaskPoll (VXB_DEV_HANDLE);
STATUS sdhcCtrlClkFreqSetup (VXB_DEV_HANDLE, UINT32);
BOOL sdhcCtrlCardWpCheck (VXB_DEV_HANDLE);
BOOL sdhcCtrlCardInsertSts (VXB_DEV_HANDLE);
#ifdef _WRS_CONFIG_VXBUS_LEGACY
void sdhcCtrlAttach (VXB_DEV_HANDLE);
#else 
STATUS sdhcCtrlAttach (VXB_DEV_HANDLE);
#endif

#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif /* __INCvxbSdhcStorageh */


