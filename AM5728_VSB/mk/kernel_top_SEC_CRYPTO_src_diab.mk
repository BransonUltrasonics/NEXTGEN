
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






LIBOBJS = $(LIBOBJS_SECCRYPTO)

# DEP_OBJS = (DEP_OBJS)

 
LIBOBJS_krnl_ARMARCH7_common_SECCRYPTO_kernel_top_SEC_CRYPTO_src_diab =  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objSECCRYPTO/secCipher.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objSECCRYPTO/secCipherAes128Cbc.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objSECCRYPTO/secCipherAes128Ctr.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objSECCRYPTO/secCipherAes128Ecb.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objSECCRYPTO/secCipherAes192Cbc.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objSECCRYPTO/secCipherAes192Ctr.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objSECCRYPTO/secCipherAes256Cbc.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objSECCRYPTO/secCipherAes256Ctr.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objSECCRYPTO/secCipherAes256Ecb.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objSECCRYPTO/secCipherBlowfishCbc.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objSECCRYPTO/secCipherCastCbc.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objSECCRYPTO/secCipherDesCbc.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objSECCRYPTO/secCipher3DesCbc.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objSECCRYPTO/secCipherRc4.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objSECCRYPTO/secKeyStoreLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objSECCRYPTO/secKeyStoreCmd.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objSECCRYPTO/ipcom_cmd_keydb.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objSECCRYPTO/ipcom_key_db.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objSECCRYPTO/ipcrypto_key_db_example_keys.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objSECCRYPTO/secVaultCmd.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objSECCRYPTO/secVaultLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objSECCRYPTO/secVaultKepObfuscator.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objSECCRYPTO/secCipherXexAes.o 

arcmdfile_krnl_ARMARCH7_common_SECCRYPTO : $(LIBOBJS_krnl_ARMARCH7_common_SECCRYPTO_kernel_top_SEC_CRYPTO_src_diab)

LIBOBJS_krnl_ARMARCH7_common_SECCRYPTO_SEC_CRYPTO += $(LIBOBJS_krnl_ARMARCH7_common_SECCRYPTO_kernel_top_SEC_CRYPTO_src_diab)

LIBOBJS_krnl_ARMARCH7_common_SECCRYPTO += $(LIBOBJS_krnl_ARMARCH7_common_SECCRYPTO_kernel_top_SEC_CRYPTO_src_diab)

__OBJS_TO_CLEAN_SEC_CRYPTO += $(LIBOBJS_krnl_ARMARCH7_common_SECCRYPTO_kernel_top_SEC_CRYPTO_src_diab) $(LIBOBJS_krnl_ARMARCH7_common_SECCRYPTO_kernel_top_SEC_CRYPTO_src_diab:.o=.d)

ifndef _DONEBASE_LIB_krnl_ARMARCH7_common_SECCRYPTO

_DONEBASE_LIB_krnl_ARMARCH7_common_SECCRYPTO = TRUE

# LIBBASES += SECCRYPTO

__LIBS_TO_BUILD += krnl_ARMARCH7_common_SECCRYPTO

__LIBS_TO_BUILD_SEC_CRYPTO += krnl_ARMARCH7_common_SECCRYPTO

__BUILT_LIBS += krnl_ARMARCH7_common_SECCRYPTO

__LIB_krnl_ARMARCH7_common_SECCRYPTO = C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/libSECCRYPTO$(OPT).a


C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objSECCRYPTO :
	$(MKDIR) $@


lib : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/libSECCRYPTO$(OPT).a  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/libSECCRYPTO.cdf

# need to pass the lib.a file twice to C:/WindRiverSR500New/compilers/diab-5.9.6.1/WIN32/bin/ddump -Ng to workaround ddump problem
C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/libSECCRYPTO.nm : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/libSECCRYPTO$(OPT).a
	$(if $(wildcard $<),cd C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common && $(NM) libSECCRYPTO$(OPT).a libSECCRYPTO$(OPT).a > $@, $(info skipping $@ : non existant $<))

C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/libSECCRYPTO.cdf : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/libSECCRYPTO.nm 
	$(if $(wildcard $<),$(LIB2CDF) -i $< -a libSECCRYPTO.a -o $@, $(info skipping $@ : non existant $<))

arcmdfiles : arcmdfile_krnl_ARMARCH7_common_SECCRYPTO

arcmdfile_krnl_ARMARCH7_common_SECCRYPTO :
	$(file >$@,$(LIBOBJS_krnl_ARMARCH7_common_SECCRYPTO))
	@echo created $@

C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/libSECCRYPTO$(OPT).a : arcmdfile_krnl_ARMARCH7_common_SECCRYPTO
	C:/WindRiverSR500New/compilers/diab-5.9.6.1/WIN32/bin/dar crusv $@ @arcmdfile_krnl_ARMARCH7_common_SECCRYPTO


clean _layer_clean_SEC_CRYPTO : _clean_LIB_BASE_krnl_ARMARCH7_common_SECCRYPTO

_clean_LIB_BASE_krnl_ARMARCH7_common_SECCRYPTO :
	rm -f C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/libSECCRYPTO$(OPT).a


endif

ifndef _DONEBASE_LIB_SEC_CRYPTO_krnl_ARMARCH7_common_SECCRYPTO

_DONEBASE_LIB_SEC_CRYPTO_krnl_ARMARCH7_common_SECCRYPTO = TRUE

lib : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/layerSEC_CRYPTO_libSECCRYPTO.cdf

C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/layerSEC_CRYPTO_libSECCRYPTO.cdf :  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/libSECCRYPTO$(OPT).a
	$(file >$@, $(call __tmpl_layercdf,SEC_CRYPTO,libSECCRYPTO.a,$(LIBOBJS_krnl_ARMARCH7_common_SECCRYPTO)))

endif


C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/libSECCRYPTO$(OPT).a : $(LIBOBJS_krnl_ARMARCH7_common_SECCRYPTO)




 

################
# rules defined locally in Makefile
##



################

objs : $(LIBOBJS)
 
# this is the end of the file 
