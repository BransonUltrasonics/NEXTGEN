/**
 * \addtogroup ESM EtherCAT State Machine
 * @{
 */

/**
\file bootmode.h
\author EthercatSSC@beckhoff.com
\brief Function prototypes for the Boot state

\version 5.11

<br>Changes to version V5.01:<br>
V5.11 ECAT10: change PROTO handling to prevent compiler errors<br>
<br>Changes to version - :<br>
V5.01 : Start file change log
 */

#ifndef _BOOTMODE_H_
#define _BOOTMODE_H_

/*-----------------------------------------------------------------------------------------
------
------    Includes
------
-----------------------------------------------------------------------------------------*/
#include <ecat_def.h>



#define ENABLE_ONLINE_FIRMWARE_UPGRADE
/*-----------------------------------------------------------------------------------------
------
------    Defines and Types
------
-----------------------------------------------------------------------------------------*/

#endif //_BOOTMODE_H_

/* ECATCHANGE_START(V5.11) ECAT10*/
#if defined(_BOOTMODE_) && (_BOOTMODE_ == 1)
/* ECATCHANGE_END(V5.11) ECAT10*/
    #define PROTO
#else
    #define PROTO extern
#endif
 /*-----------------------------------------------------------------------------------------
------
------    Global variables
------
-----------------------------------------------------------------------------------------*/


/*-----------------------------------------------------------------------------------------
------
------    Global functions
------
-----------------------------------------------------------------------------------------*/
PROTO    void BL_Start( ESS_UINT8 State);
PROTO    void BL_StartDownload(ESS_UINT32 password);
PROTO   ESS_UINT16 BL_Data(ESS_UINT16 *pData,ESS_UINT16 Size);

#undef PROTO
/** @}*/
