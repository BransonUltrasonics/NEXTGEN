
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






LIBOBJS = $(LIBOBJS_c_wr)

# DEP_OBJS = (DEP_OBJS)

 
LIBOBJS_krnl_ARMARCH7_common_c_wr_kernel_top_LANG_LIB_LIBC_LIBC_KERNEL_src_diab_libc_time =  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objc_wr/locTime.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objc_wr/asctime.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objc_wr/clock.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objc_wr/ctime.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objc_wr/gmtime.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objc_wr/localtime.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objc_wr/mktime.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objc_wr/strftime.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objc_wr/time.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objc_wr/difftime.o 

arcmdfile_krnl_ARMARCH7_common_c_wr : $(LIBOBJS_krnl_ARMARCH7_common_c_wr_kernel_top_LANG_LIB_LIBC_LIBC_KERNEL_src_diab_libc_time)

LIBOBJS_krnl_ARMARCH7_common_c_wr_LANG_LIB_LIBC_LIBC_KERNEL += $(LIBOBJS_krnl_ARMARCH7_common_c_wr_kernel_top_LANG_LIB_LIBC_LIBC_KERNEL_src_diab_libc_time)

LIBOBJS_krnl_ARMARCH7_common_c_wr += $(LIBOBJS_krnl_ARMARCH7_common_c_wr_kernel_top_LANG_LIB_LIBC_LIBC_KERNEL_src_diab_libc_time)

__OBJS_TO_CLEAN_LANG_LIB_LIBC_LIBC_KERNEL += $(LIBOBJS_krnl_ARMARCH7_common_c_wr_kernel_top_LANG_LIB_LIBC_LIBC_KERNEL_src_diab_libc_time) $(LIBOBJS_krnl_ARMARCH7_common_c_wr_kernel_top_LANG_LIB_LIBC_LIBC_KERNEL_src_diab_libc_time:.o=.d)

ifndef _DONEBASE_LIB_krnl_ARMARCH7_common_c_wr

_DONEBASE_LIB_krnl_ARMARCH7_common_c_wr = TRUE

# LIBBASES += c_wr

__LIBS_TO_BUILD += krnl_ARMARCH7_common_c_wr

__LIBS_TO_BUILD_LANG_LIB_LIBC_LIBC_KERNEL += krnl_ARMARCH7_common_c_wr

__BUILT_LIBS += krnl_ARMARCH7_common_c_wr

__LIB_krnl_ARMARCH7_common_c_wr = C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/libc_wr$(OPT).a


C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/objc_wr :
	$(MKDIR) $@


lib : C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/libc_wr$(OPT).a  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/libc_wr.cdf

# need to pass the lib.a file twice to C:/WindRiverSR500New/compilers/diab-5.9.6.1/WIN32/bin/ddump -Ng to workaround ddump problem
C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/libc_wr.nm : C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/libc_wr$(OPT).a
	$(if $(wildcard $<),cd C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common && $(NM) libc_wr$(OPT).a libc_wr$(OPT).a > $@, $(info skipping $@ : non existant $<))

C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/libc_wr.cdf : C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/libc_wr.nm 
	$(if $(wildcard $<),$(LIB2CDF) -i $< -a libc_wr.a -o $@, $(info skipping $@ : non existant $<))

arcmdfiles : arcmdfile_krnl_ARMARCH7_common_c_wr

arcmdfile_krnl_ARMARCH7_common_c_wr :
	$(file >$@,$(LIBOBJS_krnl_ARMARCH7_common_c_wr))
	@echo created $@

C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/libc_wr$(OPT).a : arcmdfile_krnl_ARMARCH7_common_c_wr
	C:/WindRiverSR500New/compilers/diab-5.9.6.1/WIN32/bin/dar crusv $@ @arcmdfile_krnl_ARMARCH7_common_c_wr


clean _layer_clean_LANG_LIB_LIBC_LIBC_KERNEL : _clean_LIB_BASE_krnl_ARMARCH7_common_c_wr

_clean_LIB_BASE_krnl_ARMARCH7_common_c_wr :
	rm -f C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/libc_wr$(OPT).a


endif

ifndef _DONEBASE_LIB_LANG_LIB_LIBC_LIBC_KERNEL_krnl_ARMARCH7_common_c_wr

_DONEBASE_LIB_LANG_LIB_LIBC_LIBC_KERNEL_krnl_ARMARCH7_common_c_wr = TRUE

lib : C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/layerLANG_LIB_LIBC_LIBC_KERNEL_libc_wr.cdf

C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/layerLANG_LIB_LIBC_LIBC_KERNEL_libc_wr.cdf :  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/libc_wr$(OPT).a
	$(file >$@, $(call __tmpl_layercdf,LANG_LIB_LIBC_LIBC_KERNEL,libc_wr.a,$(LIBOBJS_krnl_ARMARCH7_common_c_wr)))

endif


C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/ARMARCH7/common/libc_wr$(OPT).a : $(LIBOBJS_krnl_ARMARCH7_common_c_wr)




 

################
# rules defined locally in Makefile
##



################

objs : $(LIBOBJS)
 
# this is the end of the file 
