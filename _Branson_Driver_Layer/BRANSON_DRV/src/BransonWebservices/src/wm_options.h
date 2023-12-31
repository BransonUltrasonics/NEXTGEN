/*
 *  wm_options.h
 *
 *  This is a part of the Wind River Management SDK source code library.
 *
 *  Copyright (C) 2014 WindRiver Systems
 *  All rights reserved.
 *  Version 4.9
 *
 */

/* WARNING:  This file is generated by a Wind River Management Integration
 * tool.  Any changes made to this file may be overwritten by
 * subsequent uses of the tool. */

#ifndef __WM_OPTIONS_HEADER__
#define __WM_OPTIONS_HEADER__

/*-----------------------------------------------------------------------*/
/* Blade-Specific Flags */

#define __RCC_ENABLED__
#define __HTTP_ENABLED__

/*-----------------------------------------------------------------------*/
/* System Specification */

/* Host Operating System */
#define __VXWORKS_OS__
#undef __VXWORKS_AE_OS__
#undef __BSD_OS__
#undef __WIN32_OS__
#undef __POSIX_OS__

/* Inherit endianess */
#include <vxWorks.h>


/* Compiler Specific Type Definitions */
/* Signed Quantities */
typedef char sbyte;
typedef short sbyte2;
typedef int sbyte4;
typedef signed long sbyte8;

/* Unsigned Quantities */
typedef unsigned char ubyte;
typedef unsigned short ubyte2;
typedef unsigned int ubyte4;
typedef unsigned long ubyte8;


/* These flags let the Wind River Management System know about the endian-ness 
 * of the underlying processor. */
#if (_BYTE_ORDER == _LITTLE_ENDIAN) /* vxWorks define */
#define __LITTLE_ENDIAN_SYSTEM__
#undef  __BIG_ENDIAN_SYSTEM__
#else
#undef  __LITTLE_ENDIAN_SYSTEM__
#define __BIG_ENDIAN_SYSTEM__
#endif


/* Number of Real-Time Clock Ticks (which cause Processor
 * Interrupts ) per Second */
#define kHwTicksPerSecond sysClkRateGet()


/*-----------------------------------------------------------------------*/
/* General Configuration */


/* On-line Database Structure for WMB. */
#undef __DATABASE_USE_ARRAY__
#define __DATABASE_USE_HASH__
#undef __DATABASE_USE_BTREE__


/* The amount of memory that is allocated by Wind River Management to 
 * make appropriate data substitutions. This value should be 
 * equal to largest size of data, in bytes, that can be  
 * substituted for a WindMark. */
#define kMagicMarkupBufferSize 1000

/* WindMark delimiters */
#define kMagicMarkupStartChar0 '$'
#define kMagicMarkupStartChar1 '%'
#define kMagicMarkupEndChar0 '#'
#define kMagicMarkupEndChar1 '$'


/* The following flags determine whether the server is running 
 * in single threaded or multithreaded mode. */
#undef __SINGLE_THREADED_SERVER_ENABLED__
#define __MULTI_THREADED_SERVER_ENABLED__

/* Thread Pool Flags  */
#undef __ENABLE_THREAD_POOL__
#undef __WM_MAX_THREADS__

/* Enable SSL Support  */
#define INCLUDE_OPENSSL_SUPPORT


/* Memory Management -- does MALLOC and FREE ( see memmgr.c )
 * map to the device OS malloc and free routines, or do they  
 * access Wind River Management's own memory management? */
#define __OS_MALLOC_PROVIDED__
#undef kInitialMemoryAllocation


/* IP Filtering allows you to block access to your device based on the
 * client IP address.  Typically, this feature has been used to allow only
 * local (i.e. LAN-based) access to the device. */
#undef __ENABLE_LAN_IP_FILTER__
#undef RLI_CUSTOM_DYNAMIC_IP_FILTER_ENABLED
#undef RLI_CUSTOM_DYNAMIC_IP_CHECK


/* IP Stack Support: If this flag is set, the WMB and respective Consumers
 * will allow both IPv6 sockets and IPv4 connectivity, instead of just IPv4. */
#undef __WM_INET6__


/* Do the WindMarks make use of the SNMP APIs used by an 
 * SNMP agent?  */
#define __SNMP_API_ENABLED__
#define __WM_SNMP_STACK__
#undef __WM_MASTER_SUBAGENT_SNMP_STACK__
#undef __WM_PDU_BRIDGE_SNMP_STACK__


/* Disable Structures turns off Wind River Management support for structured data, 
 * specifically the Cache System and the Repeat Macro. This can substantially
 * reduce the total size of the image, but at a loss of functionality. */
#undef __DISABLE_STRUCTURES__


/*
 * Defining __USE_LOCAL_ANSI_LIB__ causes Wind River Management to use the OS libraries
 * of standard C functions (memcpy, strlen, etc.).  Otherwise, Wind River Management will
 * supply its own version of these functions.
 */
#define __USE_LOCAL_ANSI_LIB__


/* This compiler flag allows the developer to disable the ROM BUILD file
 * system. This same flag appears in wmw_httpconf.h for stand-alone Web 
 * server configurations. Select "Build | Rebuild All" after enabling 
 * or disabling the ROM file system (Build | File System Image). */
#undef __NO_ROMBUILD_IMAGE__


/* The following items describe the Access control model. It has two optional 
 * parts, that being a permision level (which the user must have an equal or 
 * greater level), and an access options list (which -if not zero- the user 
 * must overlap with). */
#define __RLI_ACCESS_LEVEL_MAXSTR__ "65535"
#define __RLI_ACCESS_LEVEL_MASK__   0x0ffff
#define __RLI_ACCESS_OPTION_MASK__  0x00000
#define __RLI_ACCESS_LEVEL_SHIFT__  0
#define EMPTY 16
typedef ubyte2 Access;

/* Security Settings Flags  */
#undef __WMB_VIEW_ACCESS_MODEL__
#define __JAVASCRIPT_DIGEST_ENABLED__

/*-----------------------------------------------------------------------*/
/* System Default Definitions */
#define WMB_MAX_PRODUCERS_K         12
#define WMB_DB_ROWS_K               1000
#define WMB_NAME_K                  "publicWMB"
#define WMB_PARENT_NAME_K           ""
#undef  WMB_PIPE_ENABLE_K           
#undef  WMB_PORT_ENABLE_K           
#define WMB_TIMEOUT_K               100
#define WMB_UDP_PORT_K              1999
#define UDP_BUFSIZE                 256
#define RM_BUFFER_SIZE              128
#define WMB_PRODUCER_NAME_MAX_K     32
#define MAGIC_WMB_HEADER_K          0xfeedbabe
#define WMB_LISTENER_PORT_K         1999
#define WMB_BACKPLANE_NAME_MAX_K    32
#define WMB_PRODUCER_NAME_SIZE_K    32
#define WMB_SHARED_DATA_NAME_K      "wmbSharedData"
#define WMB_SHARED_DATA_SIZE_K      10000
#define WMB_OBJECT_POOL_K           32
#define WMB_BUFFER_POOL_K           32
#define WMB_SESSION_VARS_K          128
#define WMB_BACKPLANE_MEMORY_K      256000
#define DEFAULT_LOCAL_ROWS_K        32
#define DEFAULT_LOCAL_SIZE_K        32

#undef  __WM_EVENT_MANAGER__        

#define WMB_OFFSET(STRUCTURE, FIELD)    (void *)&(((STRUCTURE *) 0x0)->FIELD)



/* These flags configure the WM File Manager 
 *  */
#undef __ANSI_FILE_MANAGER_ENABLED__
#undef __ENABLE_SESSION_DIRECTORIES__

/*-----------------------------------------------------------------------*/
/* Future Extensions */


/* The following items are all used for future enhancements that can be 
 * implemented by "#define"-ing each element as it applies. */
#define HTTP_SHOW


#endif /* __WM_OPTIONS_HEADER__ */
