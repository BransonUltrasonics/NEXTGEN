
#
# This file is automatically generated by mk/krnl/defs.fastlibgen.mk .
#
# build configuration :
#	VSB : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB
#	CPU : ARMARCH7
#	TOOL : diab
#	FP : vector
# 	ENDIAN : little
#	LIB_DIR_TAG = 
#	LIBDIRBASE = krnl/ARMARCH7/common
#	LIBDIRBASE = krnl/$(CPU)$(CPU_OPTION_SUFFIX)/$(TOOL_COMMON_DIR)$(LIB_DIR_TAG)$(MINOR_OPTION_SUFFIX)



include kernel_top_LANG_LIB_TOOL_TOOLSRC_DIAB_KERNEL_src_diab_libd.mk 
include kernel_top_LANG_LIB_TOOL_TOOLSRC_DIAB_KERNEL_src_diab_libimpfp.mk 
include kernel_top_LANG_LIB_TOOL_TOOLSRC_DIAB_KERNEL_src_diab_libimpfp-c++.mk 
include kernel_top_LANG_LIB_TOOL_TOOLSRC_DIAB_KERNEL_src_diab_libimpl.mk 
include kernel_top_LANG_LIB_TOOL_TOOLSRC_DIAB_KERNEL_src_diab_libstlabr.mk 
include kernel_top_LANG_LIB_TOOL_TOOLSRC_DIAB_KERNEL_src_diab_libstlstd.mk 
include kernel_top_LANG_LIB_TOOL_TOOLSRC_DIAB_KERNEL_src_diab_libtorn.mk



LIBOBJS = 

# DEP_OBJS = (DEP_OBJS)







################
# rules defined locally in Makefile
##



################

objs : $(LIBOBJS)
 
# this is the end of the file 