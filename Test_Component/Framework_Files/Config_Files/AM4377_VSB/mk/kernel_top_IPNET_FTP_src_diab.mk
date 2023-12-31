
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






LIBOBJS = $(LIBOBJS_FTP)

# DEP_OBJS = (DEP_OBJS)

 
LIBOBJS_krnl_ARMARCH7_common_FTP_kernel_top_IPNET_FTP_src_diab =  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objFTP/ipftpc.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objFTP/ipftpc_cmd_ftp.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objFTP/ipftps.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objFTP/ipftps_tls.o 

arcmdfile_krnl_ARMARCH7_common_FTP : $(LIBOBJS_krnl_ARMARCH7_common_FTP_kernel_top_IPNET_FTP_src_diab)

LIBOBJS_krnl_ARMARCH7_common_FTP_IPNET_FTP += $(LIBOBJS_krnl_ARMARCH7_common_FTP_kernel_top_IPNET_FTP_src_diab)

LIBOBJS_krnl_ARMARCH7_common_FTP += $(LIBOBJS_krnl_ARMARCH7_common_FTP_kernel_top_IPNET_FTP_src_diab)

__OBJS_TO_CLEAN_IPNET_FTP += $(LIBOBJS_krnl_ARMARCH7_common_FTP_kernel_top_IPNET_FTP_src_diab) $(LIBOBJS_krnl_ARMARCH7_common_FTP_kernel_top_IPNET_FTP_src_diab:.o=.d)

ifndef _DONEBASE_LIB_krnl_ARMARCH7_common_FTP

_DONEBASE_LIB_krnl_ARMARCH7_common_FTP = TRUE

# LIBBASES += FTP

__LIBS_TO_BUILD += krnl_ARMARCH7_common_FTP

__LIBS_TO_BUILD_IPNET_FTP += krnl_ARMARCH7_common_FTP

__BUILT_LIBS += krnl_ARMARCH7_common_FTP

__LIB_krnl_ARMARCH7_common_FTP = C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libFTP$(OPT).a


C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/objFTP :
	$(MKDIR) $@


lib : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libFTP$(OPT).a  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libFTP.cdf

# need to pass the lib.a file twice to C:/WindRiver/compilers/diab-5.9.6.1/WIN32/bin/ddump -Ng to workaround ddump problem
C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libFTP.nm : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libFTP$(OPT).a
	$(if $(wildcard $<),cd C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common && $(NM) libFTP$(OPT).a libFTP$(OPT).a > $@, $(info skipping $@ : non existant $<))

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libFTP.cdf : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libFTP.nm 
	$(if $(wildcard $<),$(LIB2CDF) -i $< -a libFTP.a -o $@, $(info skipping $@ : non existant $<))

arcmdfiles : arcmdfile_krnl_ARMARCH7_common_FTP

arcmdfile_krnl_ARMARCH7_common_FTP :
	$(file >$@,$(LIBOBJS_krnl_ARMARCH7_common_FTP))
	@echo created $@

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libFTP$(OPT).a : arcmdfile_krnl_ARMARCH7_common_FTP
	C:/WindRiver/compilers/diab-5.9.6.1/WIN32/bin/dar crusv $@ @arcmdfile_krnl_ARMARCH7_common_FTP


clean _layer_clean_IPNET_FTP : _clean_LIB_BASE_krnl_ARMARCH7_common_FTP

_clean_LIB_BASE_krnl_ARMARCH7_common_FTP :
	rm -f C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libFTP$(OPT).a


endif

ifndef _DONEBASE_LIB_IPNET_FTP_krnl_ARMARCH7_common_FTP

_DONEBASE_LIB_IPNET_FTP_krnl_ARMARCH7_common_FTP = TRUE

lib : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/layerIPNET_FTP_libFTP.cdf

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/layerIPNET_FTP_libFTP.cdf :  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libFTP$(OPT).a
	$(file >$@, $(call __tmpl_layercdf,IPNET_FTP,libFTP.a,$(LIBOBJS_krnl_ARMARCH7_common_FTP)))

endif


C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/ARMARCH7/common/libFTP$(OPT).a : $(LIBOBJS_krnl_ARMARCH7_common_FTP)




 

################
# rules defined locally in Makefile
##



################

objs : $(LIBOBJS)
 
# this is the end of the file 
