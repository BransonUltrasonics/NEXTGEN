
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






LIBOBJS = $(LIBOBJS_sdmmcstoargecard)

# DEP_OBJS = (DEP_OBJS)

 
LIBOBJS_krnl_ARMARCH7_common_sdmmcstoargecard_kernel_top_SDMMC_STORAGE_src_diab =  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objsdmmcstoargecard/vxbMmcStorage.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objsdmmcstoargecard/vxbSdStorage.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objsdmmcstoargecard/blkXbd.o 

arcmdfile_krnl_ARMARCH7_common_sdmmcstoargecard : $(LIBOBJS_krnl_ARMARCH7_common_sdmmcstoargecard_kernel_top_SDMMC_STORAGE_src_diab)

LIBOBJS_krnl_ARMARCH7_common_sdmmcstoargecard_SDMMC_STORAGE += $(LIBOBJS_krnl_ARMARCH7_common_sdmmcstoargecard_kernel_top_SDMMC_STORAGE_src_diab)

LIBOBJS_krnl_ARMARCH7_common_sdmmcstoargecard += $(LIBOBJS_krnl_ARMARCH7_common_sdmmcstoargecard_kernel_top_SDMMC_STORAGE_src_diab)

__OBJS_TO_CLEAN_SDMMC_STORAGE += $(LIBOBJS_krnl_ARMARCH7_common_sdmmcstoargecard_kernel_top_SDMMC_STORAGE_src_diab) $(LIBOBJS_krnl_ARMARCH7_common_sdmmcstoargecard_kernel_top_SDMMC_STORAGE_src_diab:.o=.d)

ifndef _DONEBASE_LIB_krnl_ARMARCH7_common_sdmmcstoargecard

_DONEBASE_LIB_krnl_ARMARCH7_common_sdmmcstoargecard = TRUE

# LIBBASES += sdmmcstoargecard

__LIBS_TO_BUILD += krnl_ARMARCH7_common_sdmmcstoargecard

__LIBS_TO_BUILD_SDMMC_STORAGE += krnl_ARMARCH7_common_sdmmcstoargecard

__BUILT_LIBS += krnl_ARMARCH7_common_sdmmcstoargecard

__LIB_krnl_ARMARCH7_common_sdmmcstoargecard = C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libsdmmcstoargecard$(OPT).a


C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objsdmmcstoargecard :
	$(MKDIR) $@


lib : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libsdmmcstoargecard$(OPT).a  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libsdmmcstoargecard.cdf

# need to pass the lib.a file twice to C:/WindRiver/compilers/diab-5.9.6.1/WIN32/bin/ddump -Ng to workaround ddump problem
C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libsdmmcstoargecard.nm : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libsdmmcstoargecard$(OPT).a
	$(if $(wildcard $<),cd C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common && $(NM) libsdmmcstoargecard$(OPT).a libsdmmcstoargecard$(OPT).a > $@, $(info skipping $@ : non existant $<))

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libsdmmcstoargecard.cdf : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libsdmmcstoargecard.nm 
	$(if $(wildcard $<),$(LIB2CDF) -i $< -a libsdmmcstoargecard.a -o $@, $(info skipping $@ : non existant $<))

arcmdfiles : arcmdfile_krnl_ARMARCH7_common_sdmmcstoargecard

arcmdfile_krnl_ARMARCH7_common_sdmmcstoargecard :
	$(file >$@,$(LIBOBJS_krnl_ARMARCH7_common_sdmmcstoargecard))
	@echo created $@

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libsdmmcstoargecard$(OPT).a : arcmdfile_krnl_ARMARCH7_common_sdmmcstoargecard
	C:/WindRiver/compilers/diab-5.9.6.1/WIN32/bin/dar crusv $@ @arcmdfile_krnl_ARMARCH7_common_sdmmcstoargecard


clean _layer_clean_SDMMC_STORAGE : _clean_LIB_BASE_krnl_ARMARCH7_common_sdmmcstoargecard

_clean_LIB_BASE_krnl_ARMARCH7_common_sdmmcstoargecard :
	rm -f C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libsdmmcstoargecard$(OPT).a


endif

ifndef _DONEBASE_LIB_SDMMC_STORAGE_krnl_ARMARCH7_common_sdmmcstoargecard

_DONEBASE_LIB_SDMMC_STORAGE_krnl_ARMARCH7_common_sdmmcstoargecard = TRUE

lib : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/layerSDMMC_STORAGE_libsdmmcstoargecard.cdf

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/layerSDMMC_STORAGE_libsdmmcstoargecard.cdf :  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libsdmmcstoargecard$(OPT).a
	$(file >$@, $(call __tmpl_layercdf,SDMMC_STORAGE,libsdmmcstoargecard.a,$(LIBOBJS_krnl_ARMARCH7_common_sdmmcstoargecard)))

endif


C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libsdmmcstoargecard$(OPT).a : $(LIBOBJS_krnl_ARMARCH7_common_sdmmcstoargecard)




 

################
# rules defined locally in Makefile
##



################

objs : $(LIBOBJS)
 
# this is the end of the file 
