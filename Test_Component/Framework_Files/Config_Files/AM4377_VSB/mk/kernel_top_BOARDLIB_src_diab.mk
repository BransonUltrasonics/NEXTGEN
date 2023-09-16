
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






LIBOBJS = $(LIBOBJS_board)

# DEP_OBJS = (DEP_OBJS)

 
LIBOBJS_krnl_ARMARCH7_common_board_kernel_top_BOARDLIB_src_diab =  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objboard/boardLib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objboard/warmBootLib.o 

arcmdfile_krnl_ARMARCH7_common_board : $(LIBOBJS_krnl_ARMARCH7_common_board_kernel_top_BOARDLIB_src_diab)

LIBOBJS_krnl_ARMARCH7_common_board_BOARDLIB += $(LIBOBJS_krnl_ARMARCH7_common_board_kernel_top_BOARDLIB_src_diab)

LIBOBJS_krnl_ARMARCH7_common_board += $(LIBOBJS_krnl_ARMARCH7_common_board_kernel_top_BOARDLIB_src_diab)

__OBJS_TO_CLEAN_BOARDLIB += $(LIBOBJS_krnl_ARMARCH7_common_board_kernel_top_BOARDLIB_src_diab) $(LIBOBJS_krnl_ARMARCH7_common_board_kernel_top_BOARDLIB_src_diab:.o=.d)

ifndef _DONEBASE_LIB_krnl_ARMARCH7_common_board

_DONEBASE_LIB_krnl_ARMARCH7_common_board = TRUE

# LIBBASES += board

__LIBS_TO_BUILD += krnl_ARMARCH7_common_board

__LIBS_TO_BUILD_BOARDLIB += krnl_ARMARCH7_common_board

__BUILT_LIBS += krnl_ARMARCH7_common_board

__LIB_krnl_ARMARCH7_common_board = C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libboard$(OPT).a


C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objboard :
	$(MKDIR) $@


lib : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libboard$(OPT).a  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libboard.cdf

# need to pass the lib.a file twice to C:/WindRiver/compilers/diab-5.9.6.1/WIN32/bin/ddump -Ng to workaround ddump problem
C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libboard.nm : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libboard$(OPT).a
	$(if $(wildcard $<),cd C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common && $(NM) libboard$(OPT).a libboard$(OPT).a > $@, $(info skipping $@ : non existant $<))

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libboard.cdf : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libboard.nm 
	$(if $(wildcard $<),$(LIB2CDF) -i $< -a libboard.a -o $@, $(info skipping $@ : non existant $<))

arcmdfiles : arcmdfile_krnl_ARMARCH7_common_board

arcmdfile_krnl_ARMARCH7_common_board :
	$(file >$@,$(LIBOBJS_krnl_ARMARCH7_common_board))
	@echo created $@

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libboard$(OPT).a : arcmdfile_krnl_ARMARCH7_common_board
	C:/WindRiver/compilers/diab-5.9.6.1/WIN32/bin/dar crusv $@ @arcmdfile_krnl_ARMARCH7_common_board


clean _layer_clean_BOARDLIB : _clean_LIB_BASE_krnl_ARMARCH7_common_board

_clean_LIB_BASE_krnl_ARMARCH7_common_board :
	rm -f C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libboard$(OPT).a


endif

ifndef _DONEBASE_LIB_BOARDLIB_krnl_ARMARCH7_common_board

_DONEBASE_LIB_BOARDLIB_krnl_ARMARCH7_common_board = TRUE

lib : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/layerBOARDLIB_libboard.cdf

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/layerBOARDLIB_libboard.cdf :  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libboard$(OPT).a
	$(file >$@, $(call __tmpl_layercdf,BOARDLIB,libboard.a,$(LIBOBJS_krnl_ARMARCH7_common_board)))

endif


C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libboard$(OPT).a : $(LIBOBJS_krnl_ARMARCH7_common_board)




 

################
# rules defined locally in Makefile
##



################

objs : $(LIBOBJS)
 
# this is the end of the file 