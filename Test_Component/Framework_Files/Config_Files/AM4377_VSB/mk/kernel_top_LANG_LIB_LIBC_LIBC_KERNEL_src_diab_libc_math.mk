
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






LIBOBJS = $(LIBOBJS_fp)

# DEP_OBJS = (DEP_OBJS)

 
LIBOBJS_krnl_ARMARCH7_common_fp_kernel_top_LANG_LIB_LIBC_LIBC_KERNEL_src_diab_libc_math =  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objfp/support.o 

arcmdfile_krnl_ARMARCH7_common_fp : $(LIBOBJS_krnl_ARMARCH7_common_fp_kernel_top_LANG_LIB_LIBC_LIBC_KERNEL_src_diab_libc_math)

LIBOBJS_krnl_ARMARCH7_common_fp_LANG_LIB_LIBC_LIBC_KERNEL += $(LIBOBJS_krnl_ARMARCH7_common_fp_kernel_top_LANG_LIB_LIBC_LIBC_KERNEL_src_diab_libc_math)

LIBOBJS_krnl_ARMARCH7_common_fp += $(LIBOBJS_krnl_ARMARCH7_common_fp_kernel_top_LANG_LIB_LIBC_LIBC_KERNEL_src_diab_libc_math)

__OBJS_TO_CLEAN_LANG_LIB_LIBC_LIBC_KERNEL += $(LIBOBJS_krnl_ARMARCH7_common_fp_kernel_top_LANG_LIB_LIBC_LIBC_KERNEL_src_diab_libc_math) $(LIBOBJS_krnl_ARMARCH7_common_fp_kernel_top_LANG_LIB_LIBC_LIBC_KERNEL_src_diab_libc_math:.o=.d)

ifndef _DONEBASE_LIB_krnl_ARMARCH7_common_fp

_DONEBASE_LIB_krnl_ARMARCH7_common_fp = TRUE

# LIBBASES += fp

__LIBS_TO_BUILD += krnl_ARMARCH7_common_fp

__LIBS_TO_BUILD_LANG_LIB_LIBC_LIBC_KERNEL += krnl_ARMARCH7_common_fp

__BUILT_LIBS += krnl_ARMARCH7_common_fp

__LIB_krnl_ARMARCH7_common_fp = C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libfp$(OPT).a


C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objfp :
	$(MKDIR) $@


lib : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libfp$(OPT).a  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libfp.cdf

# need to pass the lib.a file twice to C:/WindRiver/compilers/diab-5.9.6.1/WIN32/bin/ddump -Ng to workaround ddump problem
C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libfp.nm : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libfp$(OPT).a
	$(if $(wildcard $<),cd C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common && $(NM) libfp$(OPT).a libfp$(OPT).a > $@, $(info skipping $@ : non existant $<))

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libfp.cdf : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libfp.nm 
	$(if $(wildcard $<),$(LIB2CDF) -i $< -a libfp.a -o $@, $(info skipping $@ : non existant $<))

arcmdfiles : arcmdfile_krnl_ARMARCH7_common_fp

arcmdfile_krnl_ARMARCH7_common_fp :
	$(file >$@,$(LIBOBJS_krnl_ARMARCH7_common_fp))
	@echo created $@

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libfp$(OPT).a : arcmdfile_krnl_ARMARCH7_common_fp
	C:/WindRiver/compilers/diab-5.9.6.1/WIN32/bin/dar crusv $@ @arcmdfile_krnl_ARMARCH7_common_fp


clean _layer_clean_LANG_LIB_LIBC_LIBC_KERNEL : _clean_LIB_BASE_krnl_ARMARCH7_common_fp

_clean_LIB_BASE_krnl_ARMARCH7_common_fp :
	rm -f C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libfp$(OPT).a


endif

ifndef _DONEBASE_LIB_LANG_LIB_LIBC_LIBC_KERNEL_krnl_ARMARCH7_common_fp

_DONEBASE_LIB_LANG_LIB_LIBC_LIBC_KERNEL_krnl_ARMARCH7_common_fp = TRUE

lib : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/layerLANG_LIB_LIBC_LIBC_KERNEL_libfp.cdf

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/layerLANG_LIB_LIBC_LIBC_KERNEL_libfp.cdf :  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libfp$(OPT).a
	$(file >$@, $(call __tmpl_layercdf,LANG_LIB_LIBC_LIBC_KERNEL,libfp.a,$(LIBOBJS_krnl_ARMARCH7_common_fp)))

endif


C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libfp$(OPT).a : $(LIBOBJS_krnl_ARMARCH7_common_fp)




 

################
# rules defined locally in Makefile
##



################

objs : $(LIBOBJS)
 
# this is the end of the file 
