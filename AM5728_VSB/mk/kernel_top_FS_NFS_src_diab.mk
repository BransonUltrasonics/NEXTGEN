
#
# This file is automatically generated by mk/krnl/defs.fastlibgen.mk .
#
# build configuration :
#	VSB : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB
#	CPU : ARMARCH7
#	TOOL : diab
#	FP : vector
# 	ENDIAN : little
#	LIB_DIR_TAG = 
#	LIBDIRBASE = krnl/ARMARCH7/common
#	LIBDIRBASE = krnl/$(CPU)$(CPU_OPTION_SUFFIX)/$(TOOL_COMMON_DIR)$(LIB_DIR_TAG)$(MINOR_OPTION_SUFFIX)






LIBOBJS = $(LIBOBJS_fsNfs)

# DEP_OBJS = (DEP_OBJS)

 
LIBOBJS_krnl_ARMARCH7_common_fsNfs_kernel_top_FS_NFS_src_diab =  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objfsNfs/nfsd.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objfsNfs/nfsHash.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objfsNfs/nfs2dLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objfsNfs/nfs3dLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objfsNfs/xdr_nfs2_xdr.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objfsNfs/xdr_nfs3_xdr.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objfsNfs/xdr_nfs_common_xdr.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objfsNfs/xdr_mnt1_xdr.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objfsNfs/xdr_mnt3_xdr.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objfsNfs/xdr_mnt_common_xdr.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objfsNfs/mountd.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objfsNfs/nfsdCommon.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objfsNfs/mount3Lib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objfsNfs/mount1Lib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objfsNfs/nlm4Lib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objfsNfs/xdr_nlm4.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objfsNfs/nfs3Lib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objfsNfs/nfs3Drv.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objfsNfs/nfs2Drv.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objfsNfs/nfs2Lib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objfsNfs/nfsCommon.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objfsNfs/nfsDebug.o 

arcmdfile_krnl_ARMARCH7_common_fsNfs : $(LIBOBJS_krnl_ARMARCH7_common_fsNfs_kernel_top_FS_NFS_src_diab)

LIBOBJS_krnl_ARMARCH7_common_fsNfs_FS_NFS += $(LIBOBJS_krnl_ARMARCH7_common_fsNfs_kernel_top_FS_NFS_src_diab)

LIBOBJS_krnl_ARMARCH7_common_fsNfs += $(LIBOBJS_krnl_ARMARCH7_common_fsNfs_kernel_top_FS_NFS_src_diab)

__OBJS_TO_CLEAN_FS_NFS += $(LIBOBJS_krnl_ARMARCH7_common_fsNfs_kernel_top_FS_NFS_src_diab) $(LIBOBJS_krnl_ARMARCH7_common_fsNfs_kernel_top_FS_NFS_src_diab:.o=.d)

ifndef _DONEBASE_LIB_krnl_ARMARCH7_common_fsNfs

_DONEBASE_LIB_krnl_ARMARCH7_common_fsNfs = TRUE

# LIBBASES += fsNfs

__LIBS_TO_BUILD += krnl_ARMARCH7_common_fsNfs

__LIBS_TO_BUILD_FS_NFS += krnl_ARMARCH7_common_fsNfs

__BUILT_LIBS += krnl_ARMARCH7_common_fsNfs

__LIB_krnl_ARMARCH7_common_fsNfs = C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/libfsNfs$(OPT).a


C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objfsNfs :
	$(MKDIR) $@


lib : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/libfsNfs$(OPT).a  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/libfsNfs.cdf

# need to pass the lib.a file twice to C:/WindRiverSR500New/compilers/diab-5.9.6.1/WIN32/bin/ddump -Ng to workaround ddump problem
C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/libfsNfs.nm : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/libfsNfs$(OPT).a
	$(if $(wildcard $<),cd C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common && $(NM) libfsNfs$(OPT).a libfsNfs$(OPT).a > $@, $(info skipping $@ : non existant $<))

C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/libfsNfs.cdf : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/libfsNfs.nm 
	$(if $(wildcard $<),$(LIB2CDF) -i $< -a libfsNfs.a -o $@, $(info skipping $@ : non existant $<))

arcmdfiles : arcmdfile_krnl_ARMARCH7_common_fsNfs

arcmdfile_krnl_ARMARCH7_common_fsNfs :
	$(file >$@,$(LIBOBJS_krnl_ARMARCH7_common_fsNfs))
	@echo created $@

C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/libfsNfs$(OPT).a : arcmdfile_krnl_ARMARCH7_common_fsNfs
	C:/WindRiverSR500New/compilers/diab-5.9.6.1/WIN32/bin/dar crusv $@ @arcmdfile_krnl_ARMARCH7_common_fsNfs


clean _layer_clean_FS_NFS : _clean_LIB_BASE_krnl_ARMARCH7_common_fsNfs

_clean_LIB_BASE_krnl_ARMARCH7_common_fsNfs :
	rm -f C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/libfsNfs$(OPT).a


endif

ifndef _DONEBASE_LIB_FS_NFS_krnl_ARMARCH7_common_fsNfs

_DONEBASE_LIB_FS_NFS_krnl_ARMARCH7_common_fsNfs = TRUE

lib : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/layerFS_NFS_libfsNfs.cdf

C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/layerFS_NFS_libfsNfs.cdf :  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/libfsNfs$(OPT).a
	$(file >$@, $(call __tmpl_layercdf,FS_NFS,libfsNfs.a,$(LIBOBJS_krnl_ARMARCH7_common_fsNfs)))

endif


C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/libfsNfs$(OPT).a : $(LIBOBJS_krnl_ARMARCH7_common_fsNfs)




 

################
# rules defined locally in Makefile
##



################

objs : $(LIBOBJS)
 
# this is the end of the file 
