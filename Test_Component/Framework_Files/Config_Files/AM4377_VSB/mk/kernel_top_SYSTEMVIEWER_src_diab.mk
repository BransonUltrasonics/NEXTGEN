
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






LIBOBJS = $(LIBOBJS_windview)

# DEP_OBJS = (DEP_OBJS)

 
LIBOBJS_krnl_ARMARCH7_common_windview_kernel_top_SYSTEMVIEWER_src_diab =  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objwindview/wvHashTblLib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objwindview/wvTmrLib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objwindview/seqDrv.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objwindview/eventPointStubLib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objwindview/wvScLib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objwindview/svRtpLib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objwindview/wvLib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objwindview/evtLogLib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objwindview/wvFileUploadPathLib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objwindview/wvShow.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objwindview/dataCollectorLib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objwindview/svDataCollectorLib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objwindview/svStackTrace.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objwindview/dataCollectorShow.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objwindview/eventPointLib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objwindview/svFuncBind.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objwindview/wvModuleLib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objwindview/wvSockUploadPathLib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objwindview/trgShow.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objwindview/trgLib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objwindview/trgDataCollectorLib.o 

arcmdfile_krnl_ARMARCH7_common_windview : $(LIBOBJS_krnl_ARMARCH7_common_windview_kernel_top_SYSTEMVIEWER_src_diab)

LIBOBJS_krnl_ARMARCH7_common_windview_SYSTEMVIEWER += $(LIBOBJS_krnl_ARMARCH7_common_windview_kernel_top_SYSTEMVIEWER_src_diab)

LIBOBJS_krnl_ARMARCH7_common_windview += $(LIBOBJS_krnl_ARMARCH7_common_windview_kernel_top_SYSTEMVIEWER_src_diab)

__OBJS_TO_CLEAN_SYSTEMVIEWER += $(LIBOBJS_krnl_ARMARCH7_common_windview_kernel_top_SYSTEMVIEWER_src_diab) $(LIBOBJS_krnl_ARMARCH7_common_windview_kernel_top_SYSTEMVIEWER_src_diab:.o=.d)

ifndef _DONEBASE_LIB_krnl_ARMARCH7_common_windview

_DONEBASE_LIB_krnl_ARMARCH7_common_windview = TRUE

# LIBBASES += windview

__LIBS_TO_BUILD += krnl_ARMARCH7_common_windview

__LIBS_TO_BUILD_SYSTEMVIEWER += krnl_ARMARCH7_common_windview

__BUILT_LIBS += krnl_ARMARCH7_common_windview

__LIB_krnl_ARMARCH7_common_windview = C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libwindview$(OPT).a


C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objwindview :
	$(MKDIR) $@


lib : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libwindview$(OPT).a  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libwindview.cdf

# need to pass the lib.a file twice to C:/WindRiver/compilers/diab-5.9.6.1/WIN32/bin/ddump -Ng to workaround ddump problem
C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libwindview.nm : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libwindview$(OPT).a
	$(if $(wildcard $<),cd C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common && $(NM) libwindview$(OPT).a libwindview$(OPT).a > $@, $(info skipping $@ : non existant $<))

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libwindview.cdf : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libwindview.nm 
	$(if $(wildcard $<),$(LIB2CDF) -i $< -a libwindview.a -o $@, $(info skipping $@ : non existant $<))

arcmdfiles : arcmdfile_krnl_ARMARCH7_common_windview

arcmdfile_krnl_ARMARCH7_common_windview :
	$(file >$@,$(LIBOBJS_krnl_ARMARCH7_common_windview))
	@echo created $@

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libwindview$(OPT).a : arcmdfile_krnl_ARMARCH7_common_windview
	C:/WindRiver/compilers/diab-5.9.6.1/WIN32/bin/dar crusv $@ @arcmdfile_krnl_ARMARCH7_common_windview


clean _layer_clean_SYSTEMVIEWER : _clean_LIB_BASE_krnl_ARMARCH7_common_windview

_clean_LIB_BASE_krnl_ARMARCH7_common_windview :
	rm -f C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libwindview$(OPT).a


endif

ifndef _DONEBASE_LIB_SYSTEMVIEWER_krnl_ARMARCH7_common_windview

_DONEBASE_LIB_SYSTEMVIEWER_krnl_ARMARCH7_common_windview = TRUE

lib : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/layerSYSTEMVIEWER_libwindview.cdf

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/layerSYSTEMVIEWER_libwindview.cdf :  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libwindview$(OPT).a
	$(file >$@, $(call __tmpl_layercdf,SYSTEMVIEWER,libwindview.a,$(LIBOBJS_krnl_ARMARCH7_common_windview)))

endif


C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libwindview$(OPT).a : $(LIBOBJS_krnl_ARMARCH7_common_windview)




 

################
# rules defined locally in Makefile
##



################

objs : $(LIBOBJS)
 
# this is the end of the file 