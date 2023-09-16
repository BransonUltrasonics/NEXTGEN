/* linkSyms.c - dynamically generated configuration file */


/*
GENERATED: Thu May 19 14:27:49 EDT 2022
DO NOT EDIT - file is regenerated whenever the project changes
*/

typedef int (*FUNC) ();
extern int __assert ();
extern int __ctype ();
extern int __floatdidf ();
extern int __floatdisf ();
extern int __ieee_status ();
extern int _d_lltod ();
extern int _f_lltof ();
extern int abort ();
extern int abs ();
extern int absSymbols_Common ();
extern int acos ();
extern int armGenTimerDrv ();
extern int asctime ();
extern int asin ();
extern int atan ();
extern int atan2 ();
extern int atexit ();
extern int atof ();
extern int atoi ();
extern int atol ();
extern int bitFirstGet ();
extern int bsearch ();
extern int cabs ();
extern int cafe_ep_spec_print ();
extern int cafe_script_run ();
extern int ceil ();
extern int checksum ();
extern int clearerr ();
extern int clock ();
extern int compress ();
extern int copysign ();
extern int cos ();
extern int cosh ();
extern int cpswMaDrv ();
extern int cpswPortDrv ();
extern int cpswSlDrv ();
extern int cpswSwCtrlDrv ();
extern int ctime ();
extern int curl_easy_init ();
extern int curl_easy_setopt ();
extern int difftime ();
extern int div ();
extern int dllCreate ();
extern int dllInit ();
extern int dosFsCacheCreate ();
extern int drem ();
extern int etherMultiAdd ();
extern int exp ();
extern int fabs ();
extern int fclose ();
extern int fdopen ();
extern int feof ();
extern int ferror ();
extern int fflush ();
extern int fgetc ();
extern int fgetpos ();
extern int fgets ();
extern int fileno ();
extern int finite ();
extern int floor ();
extern int fmod ();
extern int fopen ();
extern int fppRestore ();
extern int fppSave ();
extern int fprintf ();
extern int fputc ();
extern int fputs ();
extern int fread ();
extern int freopen ();
extern int frexp ();
extern int fscanf ();
extern int fseek ();
extern int fsetpos ();
extern int ftell ();
extern int ftpCommand ();
extern int ftruncate ();
extern int fwrite ();
extern int getaddrinfo ();
extern int getc ();
extern int getchar ();
extern int gethostbyaddr ();
extern int gethostbyname ();
extern int getifaddrs ();
extern int getoptInit ();
extern int gets ();
extern int getservbyname ();
extern int getservbyport ();
extern int getw ();
extern int gmtime ();
extern int gzread ();
extern int gzseek ();
extern int gzwrite ();
extern int hashTblInit ();
extern int hookAddToTail ();
extern int hookShow ();
extern int hrfsChkDsk ();
extern int ifShow ();
extern int ifconfig ();
extern int inet_aton ();
extern int inet_network ();
extern int inflateGetDictionary ();
extern int ini_cafe_config_service ();
extern int ioHelp ();
extern int ipAttach ();
extern int ipcom_cfgfile_parse ();
extern int ipcom_register_dev_name_mapping ();
extern int ipcom_start_shell_native ();
extern int ipnet_cmd_ping ();
extern int ipnet_cmd_ping6 ();
extern int ipnet_eth_add_hdr ();
extern int ipnet_ip4_input ();
extern int ipnet_ip4_mcast_input ();
extern int ipnet_ip6_input ();
extern int ipnet_ip6_mcast_input ();
extern int ipnet_sock_netlink_register ();
extern int ipnet_sock_route_register ();
extern int ipnet_vlan_if_init ();
extern int isalnum ();
extern int isalpha ();
extern int iscntrl ();
extern int isdigit ();
extern int isgraph ();
extern int islower ();
extern int isprint ();
extern int ispunct ();
extern int isspace ();
extern int isupper ();
extern int isxdigit ();
extern int jobAdd ();
extern int jpeg_CreateDecompress ();
extern int labs ();
extern int ldexp ();
extern int ldiv ();
extern int localeconv ();
extern int localtime ();
extern int log ();
extern int log10 ();
extern int logb ();
extern int longjmp ();
extern int lstInit ();
extern int m_prepend ();
extern int mblen ();
extern int memchr ();
extern int memcmp ();
extern int memcpy ();
extern int memmove ();
extern int memset ();
extern int memset_s ();
extern int micrelPhyDrv ();
extern int mktime ();
extern int modf ();
extern int msgQEvStart ();
extern int nanosleep ();
extern int objShowAll ();
extern int opendir ();
extern int perror ();
extern int ping ();
extern int ping6 ();
extern int pow ();
extern int putc ();
extern int putchar ();
extern int puts ();
extern int putw ();
extern int qsort ();
extern int rand ();
extern int randBytes ();
extern int rewind ();
extern int rngCreate ();
extern int routec ();
extern int scalb ();
extern int scanf ();
extern int sched_setparam ();
extern int semEvStart ();
extern int semExchange ();
extern int semInfo ();
extern int setbuf ();
extern int setbuffer ();
extern int setlocale ();
extern int setvbuf ();
extern int sin ();
extern int sinh ();
extern int sllInit ();
extern int spinLockIsrNdInit ();
extern int spinLockIsrNdTake ();
extern int sqrt ();
extern int strcasecmp ();
extern int strcat ();
extern int strchr ();
extern int strcmp ();
extern int strcoll ();
extern int strcpy ();
extern int strcspn ();
extern int strdup ();
extern int strerror ();
extern int strftime ();
extern int strlcat ();
extern int strlcpy ();
extern int strlen ();
extern int strncasecmp ();
extern int strncat ();
extern int strncmp ();
extern int strncpy ();
extern int strpbrk ();
extern int strrchr ();
extern int strspn ();
extern int strstr ();
extern int strtod ();
extern int strtok ();
extern int strtok_r ();
extern int strtol ();
extern int strtoll ();
extern int strtoul ();
extern int strtoull ();
extern int strxfrm ();
extern int system ();
extern int tan ();
extern int tanh ();
extern int taskIdListGet ();
extern int taskOptionsGet ();
extern int taskRestart ();
extern int taskSpareNumAllot ();
extern int taskStatusString ();
extern int taskSwapHookAdd ();
extern int taskSwitchHookAdd ();
extern int tiAm3SioDrv ();
extern int tiApllClkDrv ();
extern int tiClkDomainDrv ();
extern int tiClkTreeDrv ();
extern int tiDividerClkDrv ();
extern int tiDpllClkDrv ();
extern int tiDpllX2ClkDrv ();
extern int tiFixedClkDrv ();
extern int tiFixedFactorClkDrv ();
extern int tiGateClkDrv ();
extern int tiModGateClkDrv ();
extern int tiMuxClkDrv ();
extern int tilconBasic ();
extern int tilconMineSweeper ();
extern int tilconOscilloscope ();
extern int tilconRadar ();
extern int tilconTwd ();
extern int time ();
extern int tipStart ();
extern int tmpfile ();
extern int tmpnam ();
extern int tolower ();
extern int toupper ();
extern int uncompress ();
extern int ungetc ();
extern int unldByModuleId ();
extern int usbXhcdInit ();
extern int vfprintf ();
extern int vxAtomicAdd ();
extern int vxbAm3PadsDrv ();
extern int vxbFdtArmGenIntCtlrDrv ();
extern int vxbFdtBusDrv ();
extern int vxbFdtI2cPcfRtcDrv ();
extern int vxbFdtOmapGpioDrv ();
extern int vxbFdtTiEdma3Drv ();
extern int vxbFdtUsbPhyFslOnChipDrv ();
extern int vxbOfAm335xSpiDrv ();
extern int vxbOfAm38xxI2cCtlrDrv ();
extern int vxbOfAm572xSpiDrv ();
extern int vxbOfI2cEepromDrv ();
extern int vxbOfOmap3TimerDrv ();
extern int vxbPcibDrv ();
extern int vxbRootDrv ();
extern int vxbSataFdtDrv ();
extern int vxbSataPciDrv ();
extern int vxbSdStorageDrv ();
extern int vxbSimpleBusDrv ();
extern int vxbSpiDevXfer ();
extern int vxbTiMmchsCtrlDrv ();
extern int vxbeMmcStorageDrv ();
extern int vxbeMmchsCtrlDrv ();

FUNC linkSyms [] = {
    __assert,
    __ctype,
    __floatdidf,
    __floatdisf,
    __ieee_status,
    _d_lltod,
    _f_lltof,
    abort,
    abs,
    absSymbols_Common,
    acos,
    armGenTimerDrv,
    asctime,
    asin,
    atan,
    atan2,
    atexit,
    atof,
    atoi,
    atol,
    bitFirstGet,
    bsearch,
    cabs,
    cafe_ep_spec_print,
    cafe_script_run,
    ceil,
    checksum,
    clearerr,
    clock,
    compress,
    copysign,
    cos,
    cosh,
    cpswMaDrv,
    cpswPortDrv,
    cpswSlDrv,
    cpswSwCtrlDrv,
    ctime,
    curl_easy_init,
    curl_easy_setopt,
    difftime,
    div,
    dllCreate,
    dllInit,
    dosFsCacheCreate,
    drem,
    etherMultiAdd,
    exp,
    fabs,
    fclose,
    fdopen,
    feof,
    ferror,
    fflush,
    fgetc,
    fgetpos,
    fgets,
    fileno,
    finite,
    floor,
    fmod,
    fopen,
    fppRestore,
    fppSave,
    fprintf,
    fputc,
    fputs,
    fread,
    freopen,
    frexp,
    fscanf,
    fseek,
    fsetpos,
    ftell,
    ftpCommand,
    ftruncate,
    fwrite,
    getaddrinfo,
    getc,
    getchar,
    gethostbyaddr,
    gethostbyname,
    getifaddrs,
    getoptInit,
    gets,
    getservbyname,
    getservbyport,
    getw,
    gmtime,
    gzread,
    gzseek,
    gzwrite,
    hashTblInit,
    hookAddToTail,
    hookShow,
    hrfsChkDsk,
    ifShow,
    ifconfig,
    inet_aton,
    inet_network,
    inflateGetDictionary,
    ini_cafe_config_service,
    ioHelp,
    ipAttach,
    ipcom_cfgfile_parse,
    ipcom_register_dev_name_mapping,
    ipcom_start_shell_native,
    ipnet_cmd_ping,
    ipnet_cmd_ping6,
    ipnet_eth_add_hdr,
    ipnet_ip4_input,
    ipnet_ip4_mcast_input,
    ipnet_ip6_input,
    ipnet_ip6_mcast_input,
    ipnet_sock_netlink_register,
    ipnet_sock_route_register,
    ipnet_vlan_if_init,
    isalnum,
    isalpha,
    iscntrl,
    isdigit,
    isgraph,
    islower,
    isprint,
    ispunct,
    isspace,
    isupper,
    isxdigit,
    jobAdd,
    jpeg_CreateDecompress,
    labs,
    ldexp,
    ldiv,
    localeconv,
    localtime,
    log,
    log10,
    logb,
    longjmp,
    lstInit,
    m_prepend,
    mblen,
    memchr,
    memcmp,
    memcpy,
    memmove,
    memset,
    memset_s,
    micrelPhyDrv,
    mktime,
    modf,
    msgQEvStart,
    nanosleep,
    objShowAll,
    opendir,
    perror,
    ping,
    ping6,
    pow,
    putc,
    putchar,
    puts,
    putw,
    qsort,
    rand,
    randBytes,
    rewind,
    rngCreate,
    routec,
    scalb,
    scanf,
    sched_setparam,
    semEvStart,
    semExchange,
    semInfo,
    setbuf,
    setbuffer,
    setlocale,
    setvbuf,
    sin,
    sinh,
    sllInit,
    spinLockIsrNdInit,
    spinLockIsrNdTake,
    sqrt,
    strcasecmp,
    strcat,
    strchr,
    strcmp,
    strcoll,
    strcpy,
    strcspn,
    strdup,
    strerror,
    strftime,
    strlcat,
    strlcpy,
    strlen,
    strncasecmp,
    strncat,
    strncmp,
    strncpy,
    strpbrk,
    strrchr,
    strspn,
    strstr,
    strtod,
    strtok,
    strtok_r,
    strtol,
    strtoll,
    strtoul,
    strtoull,
    strxfrm,
    system,
    tan,
    tanh,
    taskIdListGet,
    taskOptionsGet,
    taskRestart,
    taskSpareNumAllot,
    taskStatusString,
    taskSwapHookAdd,
    taskSwitchHookAdd,
    tiAm3SioDrv,
    tiApllClkDrv,
    tiClkDomainDrv,
    tiClkTreeDrv,
    tiDividerClkDrv,
    tiDpllClkDrv,
    tiDpllX2ClkDrv,
    tiFixedClkDrv,
    tiFixedFactorClkDrv,
    tiGateClkDrv,
    tiModGateClkDrv,
    tiMuxClkDrv,
    tilconBasic,
    tilconMineSweeper,
    tilconOscilloscope,
    tilconRadar,
    tilconTwd,
    time,
    tipStart,
    tmpfile,
    tmpnam,
    tolower,
    toupper,
    uncompress,
    ungetc,
    unldByModuleId,
    usbXhcdInit,
    vfprintf,
    vxAtomicAdd,
    vxbAm3PadsDrv,
    vxbFdtArmGenIntCtlrDrv,
    vxbFdtBusDrv,
    vxbFdtI2cPcfRtcDrv,
    vxbFdtOmapGpioDrv,
    vxbFdtTiEdma3Drv,
    vxbFdtUsbPhyFslOnChipDrv,
    vxbOfAm335xSpiDrv,
    vxbOfAm38xxI2cCtlrDrv,
    vxbOfAm572xSpiDrv,
    vxbOfI2cEepromDrv,
    vxbOfOmap3TimerDrv,
    vxbPcibDrv,
    vxbRootDrv,
    vxbSataFdtDrv,
    vxbSataPciDrv,
    vxbSdStorageDrv,
    vxbSimpleBusDrv,
    vxbSpiDevXfer,
    vxbTiMmchsCtrlDrv,
    vxbeMmcStorageDrv,
    vxbeMmchsCtrlDrv,
    0
};


int * linkDataSyms [] = {
    0
};

