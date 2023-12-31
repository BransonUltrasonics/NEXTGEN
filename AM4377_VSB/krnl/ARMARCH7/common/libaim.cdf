Symbol cacheLib {
}
Symbol cacheNullFuncs {
}
Symbol cacheDmaFuncs {
}
Symbol cacheUserFuncs {
}
Symbol _func_cacheFuncsSet {
}
Symbol cacheMmuAvailable {
}
Symbol cacheLibInit {
}
Symbol cacheFuncsSet {
}
Symbol cacheArchLibInit {
}
Symbol cacheEnable {
}
Symbol cacheDisable {
}
Symbol cacheLock {
}
Symbol cacheUnlock {
}
Symbol cacheFlush {
}
Symbol cacheInvalidate {
}
Symbol cacheClear {
}
Symbol cachePipeFlush {
}
Symbol cacheTextLocalUpdate {
}
Symbol cacheTextUpdate {
}
Symbol cacheDmaMalloc {
}
Symbol cacheDmaMallocRtn {
}
Symbol cacheArchAlignSize {
}
Symbol memSysPartId {
}
Symbol memPartAlignedAlloc {
}
Symbol cacheDmaFree {
}
Symbol cacheDmaFreeRtn {
}
Symbol cacheDataEnabled {
}
Symbol memPartFree {
}
Symbol free {
}
Symbol cacheDataMode {
}
Symbol cacheDrvFlush {
}
Symbol cacheDrvInvalidate {
}
Symbol cacheDrvVirtToPhys {
}
Symbol cacheDrvPhysToVirt {
}
Symbol cacheForeignFlush {
}
Symbol cacheForeignClear {
}
Symbol cacheForeignInvalidate {
}
Symbol aimCpuLibInit {
}
Symbol aimCpuStart {
}
Symbol aimCpuShutdown {
}
Symbol aimCpuShow {
}
Symbol aimMmuBaseLibInit {
}
Symbol aimMmuBlockSize {
}
Symbol mmuLibFuncs {
}
Symbol aimMmuPageSize {
}
Symbol aimMmuSysctlInit {
}
Symbol hw_node {
}
Symbol pSysctlCtxList {
}
Symbol sysctl_add_oid_internal {
}
Symbol mmu_node {
}
Symbol sysctl_handle_int {
}
ObjectFile libaim.a::cacheFuncBind.o {
	NAME Object file cacheFuncBind.o from archive libaim.a
	EXPORTS cacheLib cacheNullFuncs cacheDmaFuncs cacheUserFuncs cacheMmuAvailable
	IMPORTS 
	DECLARES _func_cacheFuncsSet
	USES 
}
Module cacheFuncBind.o {
	OBJECT += libaim.a::cacheFuncBind.o
}
ObjectFile libaim.a::cacheLib.o {
	NAME Object file cacheLib.o from archive libaim.a
	EXPORTS cacheLibInit cacheFuncsSet cacheEnable cacheDisable cacheLock cacheUnlock cacheFlush cacheInvalidate cacheClear cachePipeFlush cacheTextLocalUpdate cacheTextUpdate cacheDmaMalloc cacheDmaMallocRtn cacheDmaFree cacheDmaFreeRtn cacheDataEnabled cacheDataMode cacheDrvFlush cacheDrvInvalidate cacheDrvVirtToPhys cacheDrvPhysToVirt cacheForeignFlush cacheForeignClear cacheForeignInvalidate
	IMPORTS _func_cacheFuncsSet cacheArchLibInit cacheLib cacheArchAlignSize memSysPartId memPartAlignedAlloc memPartFree free cacheNullFuncs cacheUserFuncs cacheMmuAvailable cacheDmaFuncs
	DECLARES 
	USES 
}
Module cacheLib.o {
	OBJECT += libaim.a::cacheLib.o
}
ObjectFile libaim.a::aimCpuLib.o {
	NAME Object file aimCpuLib.o from archive libaim.a
	EXPORTS aimCpuLibInit aimCpuStart aimCpuShutdown aimCpuShow
	IMPORTS 
	DECLARES 
	USES 
}
Module aimCpuLib.o {
	OBJECT += libaim.a::aimCpuLib.o
}
ObjectFile libaim.a::aimMmuBaseLib.o {
	NAME Object file aimMmuBaseLib.o from archive libaim.a
	EXPORTS aimMmuBaseLibInit aimMmuBlockSize aimMmuPageSize
	IMPORTS mmuLibFuncs
	DECLARES 
	USES 
}
Module aimMmuBaseLib.o {
	OBJECT += libaim.a::aimMmuBaseLib.o
}
ObjectFile libaim.a::aimMmuSysctl.o {
	NAME Object file aimMmuSysctl.o from archive libaim.a
	EXPORTS aimMmuSysctlInit mmu_node
	IMPORTS hw_node pSysctlCtxList sysctl_add_oid_internal sysctl_handle_int aimMmuPageSize aimMmuBlockSize
	DECLARES 
	USES 
}
Module aimMmuSysctl.o {
	OBJECT += libaim.a::aimMmuSysctl.o
}
Library libaim.a {
	MODULES libaim.a::cacheFuncBind.o libaim.a::cacheLib.o libaim.a::aimCpuLib.o libaim.a::aimMmuBaseLib.o libaim.a::aimMmuSysctl.o
}
