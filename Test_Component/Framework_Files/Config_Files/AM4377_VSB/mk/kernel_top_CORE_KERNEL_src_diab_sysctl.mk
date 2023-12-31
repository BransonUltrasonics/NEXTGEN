
#
# This file is automatically generated by mk/krnl/defs.fastlibgen.mk .
#
# build configuration :
#	VSB : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB
#	CPU : ARMARCH7
#	TOOL : diab
#	FP : vector
# 	ENDIAN : little
#	LIB_DIR_TAG = 
#	LIBDIRBASE = krnl/ARMARCH7/common
#	LIBDIRBASE = krnl/$(CPU)$(CPU_OPTION_SUFFIX)/$(TOOL_COMMON_DIR)$(LIB_DIR_TAG)$(MINOR_OPTION_SUFFIX)






LIBOBJS = $(LIBOBJS_sysctl)

# DEP_OBJS = (DEP_OBJS)

 
LIBOBJS_krnl_ARMARCH7_common_sysctl_kernel_top_CORE_KERNEL_src_diab_sysctl =  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objsysctl/kern_mib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objsysctl/kern_sysctl.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objsysctl/sysctlFuncBind.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objsysctl/sysctl.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objsysctl/sysctlScLib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objsysctl/rtpSysctl.o 

arcmdfile_krnl_ARMARCH7_common_sysctl : $(LIBOBJS_krnl_ARMARCH7_common_sysctl_kernel_top_CORE_KERNEL_src_diab_sysctl)

LIBOBJS_krnl_ARMARCH7_common_sysctl_CORE_KERNEL += $(LIBOBJS_krnl_ARMARCH7_common_sysctl_kernel_top_CORE_KERNEL_src_diab_sysctl)

LIBOBJS_krnl_ARMARCH7_common_sysctl += $(LIBOBJS_krnl_ARMARCH7_common_sysctl_kernel_top_CORE_KERNEL_src_diab_sysctl)

__OBJS_TO_CLEAN_CORE_KERNEL += $(LIBOBJS_krnl_ARMARCH7_common_sysctl_kernel_top_CORE_KERNEL_src_diab_sysctl) $(LIBOBJS_krnl_ARMARCH7_common_sysctl_kernel_top_CORE_KERNEL_src_diab_sysctl:.o=.d)

ifndef _DONEBASE_LIB_krnl_ARMARCH7_common_sysctl

_DONEBASE_LIB_krnl_ARMARCH7_common_sysctl = TRUE

# LIBBASES += sysctl

__LIBS_TO_BUILD += krnl_ARMARCH7_common_sysctl

__LIBS_TO_BUILD_CORE_KERNEL += krnl_ARMARCH7_common_sysctl

__BUILT_LIBS += krnl_ARMARCH7_common_sysctl

__LIB_krnl_ARMARCH7_common_sysctl = C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libsysctl$(OPT).a


C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objsysctl :
	$(MKDIR) $@


lib : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libsysctl$(OPT).a  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libsysctl.cdf

# need to pass the lib.a file twice to C:/WindRiver/compilers/diab-5.9.6.1/WIN32/bin/ddump -Ng to workaround ddump problem
C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libsysctl.nm : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libsysctl$(OPT).a
	$(if $(wildcard $<),cd C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common && $(NM) libsysctl$(OPT).a libsysctl$(OPT).a > $@, $(info skipping $@ : non existant $<))

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libsysctl.cdf : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libsysctl.nm 
	$(if $(wildcard $<),$(LIB2CDF) -i $< -a libsysctl.a -o $@, $(info skipping $@ : non existant $<))

arcmdfiles : arcmdfile_krnl_ARMARCH7_common_sysctl

arcmdfile_krnl_ARMARCH7_common_sysctl :
	$(file >$@,$(LIBOBJS_krnl_ARMARCH7_common_sysctl))
	@echo created $@

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libsysctl$(OPT).a : arcmdfile_krnl_ARMARCH7_common_sysctl
	C:/WindRiver/compilers/diab-5.9.6.1/WIN32/bin/dar crusv $@ @arcmdfile_krnl_ARMARCH7_common_sysctl


clean _layer_clean_CORE_KERNEL : _clean_LIB_BASE_krnl_ARMARCH7_common_sysctl

_clean_LIB_BASE_krnl_ARMARCH7_common_sysctl :
	rm -f C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libsysctl$(OPT).a


endif

ifndef _DONEBASE_LIB_CORE_KERNEL_krnl_ARMARCH7_common_sysctl

_DONEBASE_LIB_CORE_KERNEL_krnl_ARMARCH7_common_sysctl = TRUE

lib : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/layerCORE_KERNEL_libsysctl.cdf

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/layerCORE_KERNEL_libsysctl.cdf :  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libsysctl$(OPT).a
	$(file >$@, $(call __tmpl_layercdf,CORE_KERNEL,libsysctl.a,$(LIBOBJS_krnl_ARMARCH7_common_sysctl)))

endif


C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libsysctl$(OPT).a : $(LIBOBJS_krnl_ARMARCH7_common_sysctl)




 

################
# rules defined locally in Makefile
##



################

objs : $(LIBOBJS)
 
# this is the end of the file 
