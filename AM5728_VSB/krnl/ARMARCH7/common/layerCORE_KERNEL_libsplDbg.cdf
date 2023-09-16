 
/* this file is generated */

Layer Layer::CORE_KERNEL {

LIBRARIES += libsplDbg.a

OBJECTS libsplDbg.a::kernelLockLib.o libsplDbg.a::spinLockIsrNdLib.o libsplDbg.a::spinLockSmpDbgLib.o

}


ObjectFile libsplDbg.a::kernelLockLib.o { 
	PATH C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objsplDbg/
}
 
ObjectFile libsplDbg.a::spinLockIsrNdLib.o { 
	PATH C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objsplDbg/
}
 
ObjectFile libsplDbg.a::spinLockSmpDbgLib.o { 
	PATH C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objsplDbg/
}



