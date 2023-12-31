/**
 \addtogroup EcatAppl EtherCAT application
 * @{
 */

/**
\file ecatappl.h
\author EthercatSSC@beckhoff.com

\version 5.11

<br>Changes to version V5.10:<br>
V5.11 ECAT10: change PROTO handling to prevent compiler errors<br>
<br>Changes to version V5.01:<br>
V5.10 ECAT13: Update Synchronisation handling (FreeRun,SM Sync, Sync0, Sync1)<br>
              Compare DC UINT configuration (by ESC Config data) vs. DC activation register settings<br>
              Update 0x1C3x entries<br>
V5.10 ECAT4: Update alignment marco for 8 to 15 bit alignments (16 and 32 Bit controllers)<br>
             Bugfix calculate LED blink frequency<br>
<br>Changes to version - :<br>
V5.01 : Start file change log
 */
/*-----------------------------------------------------------------------------------------
------
------    Description
------
------    ecatappl.h
------
------    EtherCAT Slave Application
------                                                                                                                                                                 ------
-----------------------------------------------------------------------------------------*/

#ifndef _ECATAPPL_H_
#define _ECATAPPL_H_

/*-----------------------------------------------------------------------------------------
------
------    Includes
------
-----------------------------------------------------------------------------------------*/

#include <ecat_def.h>

/*-----------------------------------------------------------------------------------------
------
------    Defines and Types
------
-----------------------------------------------------------------------------------------*/

#define MSGQ_NOTIFY_TO_RTP_SIZE 100
#define MSGQ_NOTIFY_TO_RTP_SIZE_EACH_MSG 4
/*Set to unsigned short to handle bit entries correct*/
#if CONTROLLER_16BIT || CONTROLLER_32BIT
#define     BOOLEAN(x)                  unsigned short(x):1 /**< \brief Marco to define BOOLEAN object entry*/
#define     BIT1(x)                     unsigned short(x):1 /**< \brief Marco to define BIT1 object entry*/
#define     BIT2(x)                     unsigned short(x):2 /**< \brief Marco to define BIT2 object entry*/
#define     BIT3(x)                     unsigned short(x):3 /**< \brief Marco to define BIT3 object entry*/
#define     BIT4(x)                     unsigned short(x):4 /**< \brief Marco to define BIT4 object entry*/
#define     BIT5(x)                     unsigned short(x):5 /**< \brief Marco to define BIT5 object entry*/
#define     BIT6(x)                     unsigned short(x):6 /**< \brief Marco to define BIT5 object entry*/
#define     BIT7(x)                     unsigned short(x):7 /**< \brief Marco to define BIT6 object entry*/
#define     BIT8(x)                     unsigned short(x):8 /**< \brief Marco to define BIT7 object entry*/
#define     ALIGN0(x)
#define     ALIGN1(x)                   unsigned short(x):1; /**< \brief Marco to define ALIGN1 object entry*/
#define     ALIGN2(x)                   unsigned short(x):2; /**< \brief Marco to define ALIGN2 object entry*/
#define     ALIGN3(x)                   unsigned short(x):3; /**< \brief Marco to define ALIGN3 object entry*/
#define     ALIGN4(x)                   unsigned short(x):4; /**< \brief Marco to define ALIGN4 object entry*/
#define     ALIGN5(x)                   unsigned short(x):5; /**< \brief Marco to define ALIGN5 object entry*/
#define     ALIGN6(x)                   unsigned short(x):6; /**< \brief Marco to define ALIGN6 object entry*/
#define     ALIGN7(x)                   unsigned short(x):7; /**< \brief Marco to define ALIGN7 object entry*/
#define     ALIGN8(x)                   unsigned short(x):8; /**< \brief Marco to define ALIGN8 object entry*/
#define     ALIGN9(x)                   unsigned short(x):9; /**< \brief Marco to define ALIGN9 object entry*/
#define     ALIGN10(x)                  unsigned short(x):10; /**< \brief Marco to define ALIGN10 object entry*/
#define     ALIGN11(x)                  unsigned short(x):11; /**< \brief Marco to define ALIGN11 object entry*/
#define     ALIGN12(x)                  unsigned short(x):12; /**< \brief Marco to define ALIGN12 object entry*/
#define     ALIGN13(x)                  unsigned short(x):13; /**< \brief Marco to define ALIGN13 object entry*/
#define     ALIGN14(x)                  unsigned short(x):14; /**< \brief Marco to define ALIGN14 object entry*/
#define     ALIGN15(x)                  unsigned short(x):15; /**< \brief Marco to define ALIGN15 object entry*/
#else
#define     BOOLEAN(x)                  unsigned char(x):1 /**< \brief Marco to define BOOLEAN object entry*/
#define     BIT1(x)                     unsigned char(x):1 /**< \brief Marco to define BIT1 object entry*/
#define     BIT2(x)                     unsigned char(x):2 /**< \brief Marco to define BIT2 object entry*/
#define     BIT3(x)                     unsigned char(x):3 /**< \brief Marco to define BIT3 object entry*/
#define     BIT4(x)                     unsigned char(x):4 /**< \brief Marco to define BIT4 object entry*/
#define     BIT5(x)                     unsigned char(x):5 /**< \brief Marco to define BIT5 object entry*/
#define     BIT6(x)                     unsigned char(x):6 /**< \brief Marco to define BIT5 object entry*/
#define     BIT7(x)                     unsigned char(x):7 /**< \brief Marco to define BIT6 object entry*/
#define     BIT8(x)                     unsigned char(x):8 /**< \brief Marco to define BIT7 object entry*/
#define     ALIGN0(x)
#define     ALIGN1(x)                   unsigned char(x):1; /**< \brief Marco to define ALIGN1 object entry*/
#define     ALIGN2(x)                   unsigned char(x):2; /**< \brief Marco to define ALIGN2 object entry*/
#define     ALIGN3(x)                   unsigned char(x):3; /**< \brief Marco to define ALIGN3 object entry*/
#define     ALIGN4(x)                   unsigned char(x):4; /**< \brief Marco to define ALIGN4 object entry*/
#define     ALIGN5(x)                   unsigned char(x):5; /**< \brief Marco to define ALIGN5 object entry*/
#define     ALIGN6(x)                   unsigned char(x):6; /**< \brief Marco to define ALIGN6 object entry*/
#define     ALIGN7(x)                   unsigned char(x):7; /**< \brief Marco to define ALIGN7 object entry*/
#define     ALIGN8(x)                   unsigned char(x):8; /**< \brief Marco to define ALIGN8 object entry*/
#if _PIC18
#define     ALIGN9(x)                   unsigned char x1:1; unsigned char(x):8;
#define     ALIGN10(x)                  unsigned char x1:2; unsigned char(x):8;
#define     ALIGN11(x)                  unsigned char x1:3; unsigned char(x):8;
#define     ALIGN12(x)                  unsigned char x1:4; unsigned char(x):8;
#define     ALIGN13(x)                  unsigned char x1:5; unsigned char(x):8;
#define     ALIGN14(x)                  unsigned char x1:6; unsigned char(x):8;
#define     ALIGN15(x)                  unsigned char x1:7; unsigned char(x):8;
#else
#define     ALIGN9(x)                   unsigned short(x):9; /**< \brief Marco to define ALIGN9 object entry*/
#define     ALIGN10(x)                  unsigned short(x):10; /**< \brief Marco to define ALIGN10 object entry*/
#define     ALIGN11(x)                  unsigned short(x):11; /**< \brief Marco to define ALIGN11 object entry*/
#define     ALIGN12(x)                  unsigned short(x):12; /**< \brief Marco to define ALIGN12 object entry*/
#define     ALIGN13(x)                  unsigned short(x):13; /**< \brief Marco to define ALIGN13 object entry*/
#define     ALIGN14(x)                  unsigned short(x):14; /**< \brief Marco to define ALIGN14 object entry*/
#define     ALIGN15(x)                  unsigned short(x):15; /**< \brief Marco to define ALIGN15 object entry*/
#endif
#endif
#endif //_ECATAPPL_H_

/* ECATCHANGE_START(V5.11) ECAT10*/
#if defined(_ECATAPPL_) && (_ECATAPPL_ == 1)
/* ECATCHANGE_END(V5.11) ECAT10*/
    #define PROTO
#else
    #define PROTO extern
#endif


/*-----------------------------------------------------------------------------------------
------
------    Global Variables
------
-----------------------------------------------------------------------------------------*/


#if ESC_EEPROM_EMULATION
PROTO ESS_UINT8 *pEEPROM; /**< \brief Pointer to EEPROM buffer*/
#endif

PROTO ESS_BOOL bEcatWaitForInputUpdate; /**< \brief Wait for input update*/
PROTO ESS_BOOL bEtherCATRunLed; /**< \brief Current run LED value*/
PROTO ESS_BOOL bEtherCATErrorLed; /**< \brief Current error LED value*/
PROTO ESS_BOOL bRunApplication; /**< \brief Indicates if the stack shall be running (if false the Hardware will be released)*/


/*-----------------------------------------------------------------------------------------
------
------    Global Functions
------
-----------------------------------------------------------------------------------------*/




PROTO    void       ECAT_CheckTimer(void);
PROTO    void       PDI_Isr(void);
PROTO    void       PDI_IsrFlag(void);
PROTO    void       Sync0_Isr(void);
PROTO    void       Sync1_Isr(void);
PROTO    void       ECAT_Application(void);
PROTO    void       PDO_ResetOutputs(void);
PROTO    void       PDO_ReadInputs(void);
#if MAX_PD_INPUT_SIZE > 0
PROTO    void       PDO_InputMapping(void);
#endif //#if MAX_PD_INPUT_SIZE > 0

#if UC_SET_ECAT_LED
PROTO    void       ECAT_SetLedIndication(void);
#endif
#if DC_SUPPORTED
PROTO    void       CalcSMCycleTime(void);
#endif
#if ESC_EEPROM_ACCESS_SUPPORT
PROTO    ESS_UINT16     ESC_EepromAccess(ESS_UINT32 wordaddress, ESS_UINT16 wordsize, ESS_UINT16 MBXMEM *pData, ESS_UINT8 access);
PROTO    ESS_UINT16     ESC_EepromWriteCRC(void);
#endif

#if ESC_EEPROM_EMULATION
PROTO   void EEPROM_CommandHandler(void);
#endif



#undef PROTO
/** @}*/
