
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



include kernel_top_CORE_DUMP_src_diab_arch.mk 
include kernel_top_CORE_DUMP_src_diab_dev.mk



LIBOBJS = $(LIBOBJS_coredump)

# DEP_OBJS = (DEP_OBJS)

 
LIBOBJS_krnl_ARMARCH7_common_coredump_kernel_top_CORE_DUMP_src_diab =  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoredump/coreDumpLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoredump/coreDumpCacheLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoredump/coreDumpElfLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoredump/coreDumpHookLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoredump/coreDumpMemFilterLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoredump/coreDumpRleLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoredump/coreDumpShow.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoredump/coreDumpUtilLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoredump/coreDumpMemPoolLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoredump/coreDumpCommonLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoredump/coreDumpRtpLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoredump/coreDumpRtpMemFilterLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoredump/coreDumpJsonLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoredump/coreDumpZLib.o 

arcmdfile_krnl_ARMARCH7_common_coredump : $(LIBOBJS_krnl_ARMARCH7_common_coredump_kernel_top_CORE_DUMP_src_diab)

LIBOBJS_krnl_ARMARCH7_common_coredump_CORE_DUMP += $(LIBOBJS_krnl_ARMARCH7_common_coredump_kernel_top_CORE_DUMP_src_diab)

LIBOBJS_krnl_ARMARCH7_common_coredump += $(LIBOBJS_krnl_ARMARCH7_common_coredump_kernel_top_CORE_DUMP_src_diab)

__OBJS_TO_CLEAN_CORE_DUMP += $(LIBOBJS_krnl_ARMARCH7_common_coredump_kernel_top_CORE_DUMP_src_diab) $(LIBOBJS_krnl_ARMARCH7_common_coredump_kernel_top_CORE_DUMP_src_diab:.o=.d)

ifndef _DONEBASE_LIB_krnl_ARMARCH7_common_coredump

_DONEBASE_LIB_krnl_ARMARCH7_common_coredump = TRUE

# LIBBASES += coredump

__LIBS_TO_BUILD += krnl_ARMARCH7_common_coredump

__LIBS_TO_BUILD_CORE_DUMP += krnl_ARMARCH7_common_coredump

__BUILT_LIBS += krnl_ARMARCH7_common_coredump

__LIB_krnl_ARMARCH7_common_coredump = C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/libcoredump$(OPT).a


C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objcoredump :
	$(MKDIR) $@


lib : C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/libcoredump$(OPT).a  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/libcoredump.cdf

# need to pass the lib.a file twice to C:/WindRiverSR500New/compilers/diab-5.9.6.1/WIN32/bin/ddump -Ng to workaround ddump problem
C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/libcoredump.nm : C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/libcoredump$(OPT).a
	$(if $(wildcard $<),cd C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common && $(NM) libcoredump$(OPT).a libcoredump$(OPT).a > $@, $(info skipping $@ : non existant $<))

C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/libcoredump.cdf : C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/libcoredump.nm 
	$(if $(wildcard $<),$(LIB2CDF) -i $< -a libcoredump.a -o $@, $(info skipping $@ : non existant $<))

arcmdfiles : arcmdfile_krnl_ARMARCH7_common_coredump

arcmdfile_krnl_ARMARCH7_common_coredump :
	$(file >$@,$(LIBOBJS_krnl_ARMARCH7_common_coredump))
	@echo created $@

C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/libcoredump$(OPT).a : arcmdfile_krnl_ARMARCH7_common_coredump
	C:/WindRiverSR500New/compilers/diab-5.9.6.1/WIN32/bin/dar crusv $@ @arcmdfile_krnl_ARMARCH7_common_coredump


clean _layer_clean_CORE_DUMP : _clean_LIB_BASE_krnl_ARMARCH7_common_coredump

_clean_LIB_BASE_krnl_ARMARCH7_common_coredump :
	rm -f C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/libcoredump$(OPT).a


endif

ifndef _DONEBASE_LIB_CORE_DUMP_krnl_ARMARCH7_common_coredump

_DONEBASE_LIB_CORE_DUMP_krnl_ARMARCH7_common_coredump = TRUE

lib : C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/layerCORE_DUMP_libcoredump.cdf

C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/layerCORE_DUMP_libcoredump.cdf :  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/libcoredump$(OPT).a
	$(file >$@, $(call __tmpl_layercdf,CORE_DUMP,libcoredump.a,$(LIBOBJS_krnl_ARMARCH7_common_coredump)))

endif


C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/libcoredump$(OPT).a : $(LIBOBJS_krnl_ARMARCH7_common_coredump)




 

################
# rules defined locally in Makefile
##



################

objs : $(LIBOBJS)
 
# this is the end of the file 
