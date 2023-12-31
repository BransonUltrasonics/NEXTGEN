
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






LIBOBJS = $(LIBOBJS_sdhclib)

# DEP_OBJS = (DEP_OBJS)

 
LIBOBJS_krnl_ARMARCH7_common_sdhclib_kernel_top_SDMMC_SDHC_src_diab =  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objsdhclib/vxbFslSdhcCtrl.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objsdhclib/vxbSdhcCtrl.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objsdhclib/vxbFslImxShdcCtrl.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objsdhclib/vxbPciSdhcCtrl.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objsdhclib/vxbZynqSdhcCtrl.o 

arcmdfile_krnl_ARMARCH7_common_sdhclib : $(LIBOBJS_krnl_ARMARCH7_common_sdhclib_kernel_top_SDMMC_SDHC_src_diab)

LIBOBJS_krnl_ARMARCH7_common_sdhclib_SDMMC_SDHC += $(LIBOBJS_krnl_ARMARCH7_common_sdhclib_kernel_top_SDMMC_SDHC_src_diab)

LIBOBJS_krnl_ARMARCH7_common_sdhclib += $(LIBOBJS_krnl_ARMARCH7_common_sdhclib_kernel_top_SDMMC_SDHC_src_diab)

__OBJS_TO_CLEAN_SDMMC_SDHC += $(LIBOBJS_krnl_ARMARCH7_common_sdhclib_kernel_top_SDMMC_SDHC_src_diab) $(LIBOBJS_krnl_ARMARCH7_common_sdhclib_kernel_top_SDMMC_SDHC_src_diab:.o=.d)

ifndef _DONEBASE_LIB_krnl_ARMARCH7_common_sdhclib

_DONEBASE_LIB_krnl_ARMARCH7_common_sdhclib = TRUE

# LIBBASES += sdhclib

__LIBS_TO_BUILD += krnl_ARMARCH7_common_sdhclib

__LIBS_TO_BUILD_SDMMC_SDHC += krnl_ARMARCH7_common_sdhclib

__BUILT_LIBS += krnl_ARMARCH7_common_sdhclib

__LIB_krnl_ARMARCH7_common_sdhclib = C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libsdhclib$(OPT).a


C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objsdhclib :
	$(MKDIR) $@


lib : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libsdhclib$(OPT).a  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libsdhclib.cdf

# need to pass the lib.a file twice to C:/WindRiver/compilers/diab-5.9.6.1/WIN32/bin/ddump -Ng to workaround ddump problem
C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libsdhclib.nm : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libsdhclib$(OPT).a
	$(if $(wildcard $<),cd C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common && $(NM) libsdhclib$(OPT).a libsdhclib$(OPT).a > $@, $(info skipping $@ : non existant $<))

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libsdhclib.cdf : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libsdhclib.nm 
	$(if $(wildcard $<),$(LIB2CDF) -i $< -a libsdhclib.a -o $@, $(info skipping $@ : non existant $<))

arcmdfiles : arcmdfile_krnl_ARMARCH7_common_sdhclib

arcmdfile_krnl_ARMARCH7_common_sdhclib :
	$(file >$@,$(LIBOBJS_krnl_ARMARCH7_common_sdhclib))
	@echo created $@

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libsdhclib$(OPT).a : arcmdfile_krnl_ARMARCH7_common_sdhclib
	C:/WindRiver/compilers/diab-5.9.6.1/WIN32/bin/dar crusv $@ @arcmdfile_krnl_ARMARCH7_common_sdhclib


clean _layer_clean_SDMMC_SDHC : _clean_LIB_BASE_krnl_ARMARCH7_common_sdhclib

_clean_LIB_BASE_krnl_ARMARCH7_common_sdhclib :
	rm -f C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libsdhclib$(OPT).a


endif

ifndef _DONEBASE_LIB_SDMMC_SDHC_krnl_ARMARCH7_common_sdhclib

_DONEBASE_LIB_SDMMC_SDHC_krnl_ARMARCH7_common_sdhclib = TRUE

lib : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/layerSDMMC_SDHC_libsdhclib.cdf

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/layerSDMMC_SDHC_libsdhclib.cdf :  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libsdhclib$(OPT).a
	$(file >$@, $(call __tmpl_layercdf,SDMMC_SDHC,libsdhclib.a,$(LIBOBJS_krnl_ARMARCH7_common_sdhclib)))

endif


C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libsdhclib$(OPT).a : $(LIBOBJS_krnl_ARMARCH7_common_sdhclib)




 

################
# rules defined locally in Makefile
##



################

objs : $(LIBOBJS)
 
# this is the end of the file 
