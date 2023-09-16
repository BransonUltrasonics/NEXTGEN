
#
# This file is automatically generated by mk/krnl/defs.fastlibgen.mk .
#
# build configuration :
#	VSB : C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB
#	CPU : ARMARCH7
#	TOOL : diab
#	FP : vector
# 	ENDIAN : little
#	LIB_DIR_TAG = 
#	LIBDIRBASE = krnl/ARMARCH7/common
#	LIBDIRBASE = krnl/$(CPU)$(CPU_OPTION_SUFFIX)/$(TOOL_COMMON_DIR)$(LIB_DIR_TAG)$(MINOR_OPTION_SUFFIX)






LIBOBJS = $(LIBOBJS_coreutil)

# DEP_OBJS = (DEP_OBJS)

 
LIBOBJS_krnl_ARMARCH7_common_coreutil_kernel_top_CORE_KERNEL_src_diab_util =  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoreutil/avlUintLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoreutil/bLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoreutil/bmpLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoreutil/dllLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoreutil/ffsLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoreutil/lstLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoreutil/rngLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoreutil/sllLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoreutil/hookLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoreutil/hookTblLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoreutil/dataset.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoreutil/strendcpy.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoreutil/skipPrefix.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoreutil/getpagesize.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoreutil/applUtilLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoreutil/avlUint64Lib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoreutil/memmem.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoreutil/hookShow.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoreutil/hookTblShow.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoreutil/getopt.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoreutil/avlLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoreutil/dllCreateLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoreutil/hashLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoreutil/sllCreateLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoreutil/procNumSetFuncBind.o 

arcmdfile_krnl_ARMARCH7_common_coreutil : $(LIBOBJS_krnl_ARMARCH7_common_coreutil_kernel_top_CORE_KERNEL_src_diab_util)

LIBOBJS_krnl_ARMARCH7_common_coreutil_CORE_KERNEL += $(LIBOBJS_krnl_ARMARCH7_common_coreutil_kernel_top_CORE_KERNEL_src_diab_util)

LIBOBJS_krnl_ARMARCH7_common_coreutil += $(LIBOBJS_krnl_ARMARCH7_common_coreutil_kernel_top_CORE_KERNEL_src_diab_util)

__OBJS_TO_CLEAN_CORE_KERNEL += $(LIBOBJS_krnl_ARMARCH7_common_coreutil_kernel_top_CORE_KERNEL_src_diab_util) $(LIBOBJS_krnl_ARMARCH7_common_coreutil_kernel_top_CORE_KERNEL_src_diab_util:.o=.d)

ifndef _DONEBASE_LIB_krnl_ARMARCH7_common_coreutil

_DONEBASE_LIB_krnl_ARMARCH7_common_coreutil = TRUE

# LIBBASES += coreutil

__LIBS_TO_BUILD += krnl_ARMARCH7_common_coreutil

__LIBS_TO_BUILD_CORE_KERNEL += krnl_ARMARCH7_common_coreutil

__BUILT_LIBS += krnl_ARMARCH7_common_coreutil

__LIB_krnl_ARMARCH7_common_coreutil = C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/libcoreutil$(OPT).a


C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoreutil :
	$(MKDIR) $@


lib : C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/libcoreutil$(OPT).a  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/libcoreutil.cdf

# need to pass the lib.a file twice to C:/WindRiverSR500New/compilers/diab-5.9.6.1/WIN32/bin/ddump -Ng to workaround ddump problem
C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/libcoreutil.nm : C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/libcoreutil$(OPT).a
	$(if $(wildcard $<),cd C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common && $(NM) libcoreutil$(OPT).a libcoreutil$(OPT).a > $@, $(info skipping $@ : non existant $<))

C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/libcoreutil.cdf : C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/libcoreutil.nm 
	$(if $(wildcard $<),$(LIB2CDF) -i $< -a libcoreutil.a -o $@, $(info skipping $@ : non existant $<))

arcmdfiles : arcmdfile_krnl_ARMARCH7_common_coreutil

arcmdfile_krnl_ARMARCH7_common_coreutil :
	$(file >$@,$(LIBOBJS_krnl_ARMARCH7_common_coreutil))
	@echo created $@

C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/libcoreutil$(OPT).a : arcmdfile_krnl_ARMARCH7_common_coreutil
	C:/WindRiverSR500New/compilers/diab-5.9.6.1/WIN32/bin/dar crusv $@ @arcmdfile_krnl_ARMARCH7_common_coreutil


clean _layer_clean_CORE_KERNEL : _clean_LIB_BASE_krnl_ARMARCH7_common_coreutil

_clean_LIB_BASE_krnl_ARMARCH7_common_coreutil :
	rm -f C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/libcoreutil$(OPT).a


endif

ifndef _DONEBASE_LIB_CORE_KERNEL_krnl_ARMARCH7_common_coreutil

_DONEBASE_LIB_CORE_KERNEL_krnl_ARMARCH7_common_coreutil = TRUE

lib : C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/layerCORE_KERNEL_libcoreutil.cdf

C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/layerCORE_KERNEL_libcoreutil.cdf :  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/libcoreutil$(OPT).a
	$(file >$@, $(call __tmpl_layercdf,CORE_KERNEL,libcoreutil.a,$(LIBOBJS_krnl_ARMARCH7_common_coreutil)))

endif


C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/libcoreutil$(OPT).a : $(LIBOBJS_krnl_ARMARCH7_common_coreutil)




 

################
# rules defined locally in Makefile
##



################

objs : $(LIBOBJS)
 
# this is the end of the file 