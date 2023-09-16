 
/* this file is generated */

Layer Layer::FS_ROMFS {

LIBRARIES += libfsRomfs.a

OBJECTS libfsRomfs.a::romfs.o libfsRomfs.a::romfsDrv.o libfsRomfs.a::romfsLib.o

}


ObjectFile libfsRomfs.a::romfs.o { 
	PATH C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objfsRomfs/
}
 
ObjectFile libfsRomfs.a::romfsDrv.o { 
	PATH C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objfsRomfs/
}
 
ObjectFile libfsRomfs.a::romfsLib.o { 
	PATH C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objfsRomfs/
}



