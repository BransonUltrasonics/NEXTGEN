
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



include kernel_top_FDT_src_diab_libfdt.mk



LIBOBJS = $(LIBOBJS_fdt)

# DEP_OBJS = (DEP_OBJS)

 
LIBOBJS_krnl_ARMARCH7_common_fdt_kernel_top_FDT_src_diab =  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objfdt/vxFdtLib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objfdt/vxFdtCpu.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objfdt/vxFdtRwLib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objfdt/vxFdtShow.o 

arcmdfile_krnl_ARMARCH7_common_fdt : $(LIBOBJS_krnl_ARMARCH7_common_fdt_kernel_top_FDT_src_diab)

LIBOBJS_krnl_ARMARCH7_common_fdt_FDT += $(LIBOBJS_krnl_ARMARCH7_common_fdt_kernel_top_FDT_src_diab)

LIBOBJS_krnl_ARMARCH7_common_fdt += $(LIBOBJS_krnl_ARMARCH7_common_fdt_kernel_top_FDT_src_diab)

__OBJS_TO_CLEAN_FDT += $(LIBOBJS_krnl_ARMARCH7_common_fdt_kernel_top_FDT_src_diab) $(LIBOBJS_krnl_ARMARCH7_common_fdt_kernel_top_FDT_src_diab:.o=.d)

ifndef _DONEBASE_LIB_krnl_ARMARCH7_common_fdt

_DONEBASE_LIB_krnl_ARMARCH7_common_fdt = TRUE

# LIBBASES += fdt

__LIBS_TO_BUILD += krnl_ARMARCH7_common_fdt

__LIBS_TO_BUILD_FDT += krnl_ARMARCH7_common_fdt

__BUILT_LIBS += krnl_ARMARCH7_common_fdt

__LIB_krnl_ARMARCH7_common_fdt = C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libfdt$(OPT).a


C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objfdt :
	$(MKDIR) $@


lib : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libfdt$(OPT).a  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libfdt.cdf

# need to pass the lib.a file twice to C:/WindRiver/compilers/diab-5.9.6.1/WIN32/bin/ddump -Ng to workaround ddump problem
C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libfdt.nm : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libfdt$(OPT).a
	$(if $(wildcard $<),cd C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common && $(NM) libfdt$(OPT).a libfdt$(OPT).a > $@, $(info skipping $@ : non existant $<))

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libfdt.cdf : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libfdt.nm 
	$(if $(wildcard $<),$(LIB2CDF) -i $< -a libfdt.a -o $@, $(info skipping $@ : non existant $<))

arcmdfiles : arcmdfile_krnl_ARMARCH7_common_fdt

arcmdfile_krnl_ARMARCH7_common_fdt :
	$(file >$@,$(LIBOBJS_krnl_ARMARCH7_common_fdt))
	@echo created $@

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libfdt$(OPT).a : arcmdfile_krnl_ARMARCH7_common_fdt
	C:/WindRiver/compilers/diab-5.9.6.1/WIN32/bin/dar crusv $@ @arcmdfile_krnl_ARMARCH7_common_fdt


clean _layer_clean_FDT : _clean_LIB_BASE_krnl_ARMARCH7_common_fdt

_clean_LIB_BASE_krnl_ARMARCH7_common_fdt :
	rm -f C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libfdt$(OPT).a


endif

ifndef _DONEBASE_LIB_FDT_krnl_ARMARCH7_common_fdt

_DONEBASE_LIB_FDT_krnl_ARMARCH7_common_fdt = TRUE

lib : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/layerFDT_libfdt.cdf

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/layerFDT_libfdt.cdf :  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libfdt$(OPT).a
	$(file >$@, $(call __tmpl_layercdf,FDT,libfdt.a,$(LIBOBJS_krnl_ARMARCH7_common_fdt)))

endif


C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libfdt$(OPT).a : $(LIBOBJS_krnl_ARMARCH7_common_fdt)




 

################
# rules defined locally in Makefile
##



################

objs : $(LIBOBJS)
 
# this is the end of the file 