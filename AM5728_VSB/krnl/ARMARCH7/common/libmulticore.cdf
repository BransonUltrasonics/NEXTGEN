Symbol cpusetLogicalToPhys {
}
Symbol vxCpuConfiguredGet {
}
Symbol vxBaseCpuPhysIndex {
}
Symbol cpusetPhysToLogical {
}
Symbol vxCpuLibInit {
}
Symbol vxCpuArchLibInit {
}
Symbol vxCpuEnabledGet {
}
Symbol vxCpuEnabled {
}
Symbol vxCpuConfigured {
}
Symbol vxCpuPhysIndexGet {
}
Symbol vxCpuIdToPhysIndex {
}
Symbol vxCpuPhysIndexToId {
}
Symbol vxCpuReservedGet {
}
Symbol errnoSet {
}
Symbol vxCpuSetReserved {
}
Symbol vxAtomic32Set {
}
Symbol vxCpuReserve {
}
Symbol spinLockRestrict {
}
Symbol intContext {
}
Symbol __errno {
}
Symbol kernelLockTake {
}
Symbol vxCpuSetReservedAvail {
}
Symbol windExit {
}
Symbol ffs32Lsb {
}
Symbol readyQReservationCheck {
}
Symbol vxCpuUnreserve {
}
Symbol vxCpuReservedStringParse {
}
Symbol vxCpuIndexGet {
}
Symbol strtol {
}
Symbol cpcInit {
}
Symbol spinLockIsrInit {
}
Symbol vxIpiConnect {
}
Symbol vxIpiEnable {
}
Symbol setjmp {
}
Symbol edrErrorInjectStub {
}
Symbol edrInitFatalPolicyHandler {
}
Symbol cpcInvoke {
}
Symbol spinLockIsrTake {
}
Symbol vxIpiEmit {
}
Symbol spinLockIsrGive {
}
Symbol sysExcMsg {
}
Symbol strcat {
}
Symbol strlen {
}
Symbol edrSystemFatalPolicyHandler {
}
Symbol reboot {
}
Symbol vxAtomic32And {
}
Symbol cpcSync {
}
Symbol atomic32OpSc {
}
Symbol scMemValidate {
}
Symbol vxAtomic32Add {
}
Symbol vxAtomic32Dec {
}
Symbol vxAtomic32Inc {
}
Symbol vxAtomic32Nand {
}
Symbol vxAtomic32Or {
}
Symbol vxAtomic32Sub {
}
Symbol vxAtomic32Xor {
}
Symbol vxAtomic32Clear {
}
Symbol vxAtomic32Get {
}
Symbol vxAtomic32Cas {
}
Symbol atomic64OpSc {
}
ObjectFile libmulticore.a::cpuset.o {
	NAME Object file cpuset.o from archive libmulticore.a
	EXPORTS cpusetLogicalToPhys cpusetPhysToLogical
	IMPORTS vxCpuConfiguredGet vxBaseCpuPhysIndex
	DECLARES 
	USES 
}
Module cpuset.o {
	OBJECT += libmulticore.a::cpuset.o
}
ObjectFile libmulticore.a::vxCpuLib.o {
	NAME Object file vxCpuLib.o from archive libmulticore.a
	EXPORTS vxCpuLibInit vxCpuEnabledGet vxCpuEnabled vxCpuConfiguredGet vxCpuPhysIndexGet vxCpuIdToPhysIndex vxCpuPhysIndexToId vxCpuReservedGet vxCpuSetReserved vxCpuReserve vxCpuUnreserve vxCpuReservedStringParse vxBaseCpuPhysIndex
	IMPORTS vxCpuArchLibInit vxCpuConfigured errnoSet vxAtomic32Set spinLockRestrict intContext __errno kernelLockTake windExit ffs32Lsb readyQReservationCheck vxCpuIndexGet strtol
	DECLARES vxCpuSetReservedAvail
	USES 
}
Module vxCpuLib.o {
	OBJECT += libmulticore.a::vxCpuLib.o
}
ObjectFile libmulticore.a::cpcLib.o {
	NAME Object file cpcLib.o from archive libmulticore.a
	EXPORTS cpcInit cpcInvoke cpcSync
	IMPORTS spinLockIsrInit vxIpiConnect vxIpiEnable setjmp edrErrorInjectStub edrInitFatalPolicyHandler vxCpuEnabledGet vxCpuIndexGet spinLockIsrTake vxAtomic32Set vxIpiEmit spinLockIsrGive sysExcMsg strcat strlen edrSystemFatalPolicyHandler reboot vxAtomic32And
	DECLARES 
	USES 
}
Module cpcLib.o {
	OBJECT += libmulticore.a::cpcLib.o
}
ObjectFile libmulticore.a::vxAtomicScLib.o {
	NAME Object file vxAtomicScLib.o from archive libmulticore.a
	EXPORTS atomic32OpSc atomic64OpSc
	IMPORTS scMemValidate errnoSet vxAtomic32Add vxAtomic32And vxAtomic32Dec vxAtomic32Inc vxAtomic32Nand vxAtomic32Or vxAtomic32Sub vxAtomic32Xor vxAtomic32Clear vxAtomic32Get vxAtomic32Set vxAtomic32Cas __errno
	DECLARES 
	USES 
}
Module vxAtomicScLib.o {
	OBJECT += libmulticore.a::vxAtomicScLib.o
}
ObjectFile libmulticore.a::vxAtomicLib.o {
	NAME Object file vxAtomicLib.o from archive libmulticore.a
	EXPORTS 
	IMPORTS 
	DECLARES 
	USES 
}
Module vxAtomicLib.o {
	OBJECT += libmulticore.a::vxAtomicLib.o
}
Library libmulticore.a {
	MODULES libmulticore.a::cpuset.o libmulticore.a::vxCpuLib.o libmulticore.a::cpcLib.o libmulticore.a::vxAtomicScLib.o libmulticore.a::vxAtomicLib.o
}
