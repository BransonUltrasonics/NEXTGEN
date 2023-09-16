 
/* this file is generated */

Layer Layer::BOARDLIB {

LIBRARIES += libboard.a

OBJECTS libboard.a::boardLib.o libboard.a::warmBootLib.o

}


ObjectFile libboard.a::boardLib.o { 
	PATH C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objboard/
}
 
ObjectFile libboard.a::warmBootLib.o { 
	PATH C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objboard/
}



