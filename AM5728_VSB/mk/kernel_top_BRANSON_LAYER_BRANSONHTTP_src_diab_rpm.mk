
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






LIBOBJS = $(LIBOBJS_wmhttp)

# DEP_OBJS = (DEP_OBJS)

 
LIBOBJS_krnl_ARMARCH7_common_wmhttp_kernel_top_BRANSON_LAYER_BRANSONHTTP_src_diab_rpm =  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objwmhttp/httpProcessPostData.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objwmhttp/httpRpmAccessControl.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objwmhttp/httpRpmAlias.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objwmhttp/httpRpmAuth.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objwmhttp/httpRpmCgi.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objwmhttp/httpRpmFileSystem.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objwmhttp/httpRpmIpCheck.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objwmhttp/httpRpmLog.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objwmhttp/httpRpmMime.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objwmhttp/httpRpmPost.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objwmhttp/httpRpmUpload.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objwmhttp/httpRpmWmbParser.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objwmhttp/httpRpmWmbPost.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objwmhttp/httpRpmPassword.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objwmhttp/httpRpmLiveControl.o 

arcmdfile_krnl_ARMARCH7_common_wmhttp : $(LIBOBJS_krnl_ARMARCH7_common_wmhttp_kernel_top_BRANSON_LAYER_BRANSONHTTP_src_diab_rpm)

LIBOBJS_krnl_ARMARCH7_common_wmhttp_BRANSON_LAYER_BRANSONHTTP += $(LIBOBJS_krnl_ARMARCH7_common_wmhttp_kernel_top_BRANSON_LAYER_BRANSONHTTP_src_diab_rpm)

LIBOBJS_krnl_ARMARCH7_common_wmhttp += $(LIBOBJS_krnl_ARMARCH7_common_wmhttp_kernel_top_BRANSON_LAYER_BRANSONHTTP_src_diab_rpm)

__OBJS_TO_CLEAN_BRANSON_LAYER_BRANSONHTTP += $(LIBOBJS_krnl_ARMARCH7_common_wmhttp_kernel_top_BRANSON_LAYER_BRANSONHTTP_src_diab_rpm) $(LIBOBJS_krnl_ARMARCH7_common_wmhttp_kernel_top_BRANSON_LAYER_BRANSONHTTP_src_diab_rpm:.o=.d)

ifndef _DONEBASE_LIB_krnl_ARMARCH7_common_wmhttp

_DONEBASE_LIB_krnl_ARMARCH7_common_wmhttp = TRUE

# LIBBASES += wmhttp

__LIBS_TO_BUILD += krnl_ARMARCH7_common_wmhttp

__LIBS_TO_BUILD_BRANSON_LAYER_BRANSONHTTP += krnl_ARMARCH7_common_wmhttp

__BUILT_LIBS += krnl_ARMARCH7_common_wmhttp

__LIB_krnl_ARMARCH7_common_wmhttp = C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/libwmhttp$(OPT).a


C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/objwmhttp :
	$(MKDIR) $@


lib : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/libwmhttp$(OPT).a  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/libwmhttp.cdf

# need to pass the lib.a file twice to C:/WindRiverSR500New/compilers/diab-5.9.6.1/WIN32/bin/ddump -Ng to workaround ddump problem
C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/libwmhttp.nm : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/libwmhttp$(OPT).a
	$(if $(wildcard $<),cd C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common && $(NM) libwmhttp$(OPT).a libwmhttp$(OPT).a > $@, $(info skipping $@ : non existant $<))

C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/libwmhttp.cdf : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/libwmhttp.nm 
	$(if $(wildcard $<),$(LIB2CDF) -i $< -a libwmhttp.a -o $@, $(info skipping $@ : non existant $<))

arcmdfiles : arcmdfile_krnl_ARMARCH7_common_wmhttp

arcmdfile_krnl_ARMARCH7_common_wmhttp :
	$(file >$@,$(LIBOBJS_krnl_ARMARCH7_common_wmhttp))
	@echo created $@

C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/libwmhttp$(OPT).a : arcmdfile_krnl_ARMARCH7_common_wmhttp
	C:/WindRiverSR500New/compilers/diab-5.9.6.1/WIN32/bin/dar crusv $@ @arcmdfile_krnl_ARMARCH7_common_wmhttp


clean _layer_clean_BRANSON_LAYER_BRANSONHTTP : _clean_LIB_BASE_krnl_ARMARCH7_common_wmhttp

_clean_LIB_BASE_krnl_ARMARCH7_common_wmhttp :
	rm -f C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/libwmhttp$(OPT).a


endif

ifndef _DONEBASE_LIB_BRANSON_LAYER_BRANSONHTTP_krnl_ARMARCH7_common_wmhttp

_DONEBASE_LIB_BRANSON_LAYER_BRANSONHTTP_krnl_ARMARCH7_common_wmhttp = TRUE

lib : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/layerBRANSON_LAYER_BRANSONHTTP_libwmhttp.cdf

C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/layerBRANSON_LAYER_BRANSONHTTP_libwmhttp.cdf :  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/libwmhttp$(OPT).a
	$(file >$@, $(call __tmpl_layercdf,BRANSON_LAYER_BRANSONHTTP,libwmhttp.a,$(LIBOBJS_krnl_ARMARCH7_common_wmhttp)))

endif


C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/ARMARCH7/common/libwmhttp$(OPT).a : $(LIBOBJS_krnl_ARMARCH7_common_wmhttp)




 

################
# rules defined locally in Makefile
##



################

objs : $(LIBOBJS)
 
# this is the end of the file 