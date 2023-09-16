 
/* this file is generated */

Layer Layer::IPNET_RADIUS {

LIBRARIES += libRADIUS.a

OBJECTS libRADIUS.a::ipradius.o libRADIUS.a::ipradius_cmd_radiusc.o

}


ObjectFile libRADIUS.a::ipradius.o { 
	PATH C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objRADIUS/
}
 
ObjectFile libRADIUS.a::ipradius_cmd_radiusc.o { 
	PATH C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objRADIUS/
}



