Symbol rawPerfDemoDisplaySet {
}
Symbol rawPerfDemo {
}
Symbol taskPriNormalGet {
}
Symbol printf {
}
Symbol taskPrioritySet {
}
Symbol vxCpuEnabledGet {
}
Symbol snprintf {
}
Symbol taskCreate {
}
Symbol taskActivate {
}
Symbol sysClkRateGet {
}
Symbol taskDelay {
}
Symbol vxAtomic32Get {
}
Symbol graphAxisDraw {
}
Symbol vxAtomic32Set {
}
Symbol graphPointPlot {
}
Symbol __udiv32 {
}
Symbol __div32 {
}
Symbol taskDelete {
}
Symbol graphKeyWait {
}
Symbol vxAtomic32Inc {
}
Symbol eventReceive {
}
Symbol vxTas {
}
Symbol eventSend {
}
Symbol primesSimpleCompute {
}
Symbol malloc {
}
Symbol bfill {
}
Symbol tick64Get {
}
Symbol __urem32 {
}
Symbol fioRdString {
}
Symbol free {
}
Symbol primesCompute {
}
Symbol taskIdSelf {
}
Symbol taskSpawn {
}
Symbol primesDisplaySimple {
}
Symbol smtPerfDemoDisplaySet {
}
Symbol __rem32 {
}
Symbol smtPerfDemo {
}
Symbol sprintf {
}
Symbol semMCreate {
}
Symbol taskResume {
}
Symbol semDelete {
}
Symbol semTake {
}
Symbol rand {
}
Symbol semGive {
}
Symbol taskSuspend {
}
Symbol philDemo {
}
Symbol semBCreate {
}
Symbol calloc {
}
Symbol philosopherRun {
}
Symbol semFlush {
}
Symbol exit {
}
Symbol forksGet {
}
Symbol forksPut {
}
Symbol vxCpuIndexGet {
}
Symbol smpDemoModules {
}
Symbol smpLockDemo {
}
Symbol strlen {
}
Symbol spinLockTaskTake {
}
Symbol spinLockTaskGive {
}
Symbol vxAtomicCas {
}
Symbol vxAtomicSet {
}
Symbol vxAtomic32Add {
}
Symbol taskCpuAffinitySet {
}
Symbol wdCreate {
}
Symbol spinLockTaskInit {
}
Symbol bzero {
}
Symbol wdStart {
}
ObjectFile libsmpdemo.a::rawPerfDemo.o {
	NAME Object file rawPerfDemo.o from archive libsmpdemo.a
	EXPORTS rawPerfDemoDisplaySet rawPerfDemo
	IMPORTS taskPriNormalGet printf taskPrioritySet vxCpuEnabledGet snprintf taskCreate taskActivate sysClkRateGet taskDelay vxAtomic32Get graphAxisDraw vxAtomic32Set graphPointPlot __udiv32 __div32 taskDelete graphKeyWait vxAtomic32Inc
	DECLARES 
	USES 
}
Module rawPerfDemo.o {
	OBJECT += libsmpdemo.a::rawPerfDemo.o
}
ObjectFile libsmpdemo.a::primesDemo.o {
	NAME Object file primesDemo.o from archive libsmpdemo.a
	EXPORTS primesSimpleCompute primesCompute primesDisplaySimple
	IMPORTS eventReceive vxTas eventSend printf malloc bfill tick64Get __urem32 fioRdString free vxCpuEnabledGet __udiv32 taskIdSelf taskSpawn taskDelete graphAxisDraw graphPointPlot graphKeyWait
	DECLARES 
	USES 
}
Module primesDemo.o {
	OBJECT += libsmpdemo.a::primesDemo.o
}
ObjectFile libsmpdemo.a::smtPerfDemo.o {
	NAME Object file smtPerfDemo.o from archive libsmpdemo.a
	EXPORTS smtPerfDemoDisplaySet smtPerfDemo
	IMPORTS __rem32 __div32 taskPriNormalGet printf taskPrioritySet malloc vxCpuEnabledGet sprintf taskCreate taskDelete semMCreate taskActivate sysClkRateGet taskDelay vxAtomic32Get vxAtomic32Set __udiv32 graphAxisDraw taskResume graphPointPlot graphKeyWait semDelete free semTake rand semGive taskSuspend vxAtomic32Inc
	DECLARES 
	USES 
}
Module smtPerfDemo.o {
	OBJECT += libsmpdemo.a::smtPerfDemo.o
}
ObjectFile libsmpdemo.a::phil.o {
	NAME Object file phil.o from archive libsmpdemo.a
	EXPORTS philDemo philosopherRun forksGet forksPut
	IMPORTS sysClkRateGet taskDelay taskIdSelf printf semBCreate calloc semMCreate taskSpawn semFlush taskSuspend taskDelete exit semDelete free __rem32 semTake semGive vxCpuIndexGet sprintf
	DECLARES 
	USES 
}
Module phil.o {
	OBJECT += libsmpdemo.a::phil.o
}
ObjectFile libsmpdemo.a::smpDemo.o {
	NAME Object file smpDemo.o from archive libsmpdemo.a
	EXPORTS smpDemoModules
	IMPORTS primesCompute philDemo rawPerfDemo smpLockDemo smtPerfDemo
	DECLARES 
	USES 
}
Module smpDemo.o {
	OBJECT += libsmpdemo.a::smpDemo.o
}
ObjectFile libsmpdemo.a::graphLib.o {
	NAME Object file graphLib.o from archive libsmpdemo.a
	EXPORTS graphAxisDraw graphPointPlot graphKeyWait
	IMPORTS strlen __div32 snprintf printf __udiv32 fioRdString
	DECLARES 
	USES 
}
Module graphLib.o {
	OBJECT += libsmpdemo.a::graphLib.o
}
ObjectFile libsmpdemo.a::smpLockDemo.o {
	NAME Object file smpLockDemo.o from archive libsmpdemo.a
	EXPORTS smpLockDemo
	IMPORTS spinLockTaskTake spinLockTaskGive vxAtomic32Inc vxAtomicCas vxAtomicSet vxAtomic32Add printf eventSend taskIdSelf taskCreate taskCpuAffinitySet taskActivate vxCpuEnabledGet sysClkRateGet wdCreate spinLockTaskInit bzero wdStart eventReceive
	DECLARES 
	USES 
}
Module smpLockDemo.o {
	OBJECT += libsmpdemo.a::smpLockDemo.o
}
Library libsmpdemo.a {
	MODULES libsmpdemo.a::rawPerfDemo.o libsmpdemo.a::primesDemo.o libsmpdemo.a::smtPerfDemo.o libsmpdemo.a::phil.o libsmpdemo.a::smpDemo.o libsmpdemo.a::graphLib.o libsmpdemo.a::smpLockDemo.o
}
