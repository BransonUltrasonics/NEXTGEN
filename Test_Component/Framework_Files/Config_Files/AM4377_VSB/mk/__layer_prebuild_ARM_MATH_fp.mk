
# this file is automatically generated by mk/krnl/rules.binlayer.mk
# build of binary layer ARM_MATH_fp
 
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	
__BUILD_FB_IDS += _top_ARM_MATH_fp_src

BUILD : _binlayer_build_ARM_MATH_fp_src_

_binlayer_build_ARM_MATH_fp_src_ :
	+ cd C:/WindRiver/vxworks-7/pkgs/os/arch/arm-1.1.9.1/kernel/math_bin/src && C:/WindRiver/vxworks-7/host/binutils/x86-win32/bin/make _mk VSBL_NAME=ARM_MATH_fp CPU=ARMARCH7 TOOL=diab TOOL_VERSION=diab_5_9_6_1 _CC_VERSION=diab_5_9_6_1 VSB_DIR=C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB __BIN_LAYER=C:/WindRiver/vxworks-7/pkgs/os/arch/arm-1.1.9.1/kernel/math_bin _FB_ID=_top_ARM_MATH_fp_src BUILD_ALL_OBJS=TRUE 

	
	

	
	
	

	

	
__DIR_TARGETS += $(__DIR_TARGETS_ARM_MATH_fp)

__DIR_TARGETS_ARM_MATH_fp += 

