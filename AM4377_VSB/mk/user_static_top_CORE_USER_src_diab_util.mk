
#
# This file is automatically generated by mk/usr/defs.fastlibgen.mk.
#
# build configuration :
#	VSB : C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB
#	CPU : ARMARCH7
#	TOOL : diab
#	FP : vector
# 	ENDIAN : little
#	LIB_DIR_TAG = 
#	LIBDIRBASE = common
#	LIBDIRBASE = $(TOOL_COMMON_DIR)$(LIB_DIR_TAG)






ifeq (,)



endif


# DEP_OBJS = (DEP_OBJS)

# LIB_BASE_NAMES = c

 
_STATIC_LIBOBJS_common_c_user_static_top_CORE_USER_src_diab_util = C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/usr/lib/common/objc/avlUintLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/usr/lib/common/objc/bLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/usr/lib/common/objc/dllLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/usr/lib/common/objc/fioLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/usr/lib/common/objc/ffsLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/usr/lib/common/objc/hashLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/usr/lib/common/objc/hookLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/usr/lib/common/objc/lstLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/usr/lib/common/objc/poolLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/usr/lib/common/objc/rngLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/usr/lib/common/objc/sllLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/usr/lib/common/objc/strendcpy.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/usr/lib/common/objc/skipPrefix.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/usr/lib/common/objc/applUtilLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/usr/lib/common/objc/avlUint64Lib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/usr/lib/common/objc/avlLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/usr/lib/common/objc/memmem.o

_usrstarcmdfile_common_c : $(_STATIC_LIBOBJS_common_c_user_static_top_CORE_USER_src_diab_util)

_STATIC_LIBOBJS_common_c += $(_STATIC_LIBOBJS_common_c_user_static_top_CORE_USER_src_diab_util)

__OBJS_TO_CLEAN_CORE_USER += $(_STATIC_LIBOBJS_common_c_user_static_top_CORE_USER_src_diab_util)

C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/usr/lib/common/libc.a : $(_STATIC_LIBOBJS_common_c_user_static_top_CORE_USER_src_diab_util)

ifndef _DONEBASE_USRST_LIB_common_c

_DONEBASE_USRST_LIB_common_c = TRUE

# LIBBASES += c

# C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/usr/lib/common:
#	mkdir -p $@

# C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/usr/lib/common/objc :
#	mkdir -p $@

usrstlib : C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/usr/lib/common/libc.a

C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/usr/lib/common/libc.a : | C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/usr/lib/common

__STATIC_BUILT_LIBS += common_c

__STLIB_common_c = C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/usr/lib/common/libc.a

arcmdfiles : _usrstarcmdfile_common_c

_usrstarcmdfile_common_c :
	$(file >$@,$(sort $(_STATIC_LIBOBJS_common_c)))
	@echo created $@

C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/usr/lib/common/libc.a : _usrstarcmdfile_common_c | C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/usr/lib/common
	C:/WindRiverSR500New/compilers/diab-5.9.6.1/WIN32/bin/dar crusv $@ @_usrstarcmdfile_common_c

clean  _layer_clean_CORE_USER : _clean_USRST_LIB_BASE_common_c

_clean_USRST_LIB_BASE_common_c :
	rm -f C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/usr/lib/common/libc.a

endif


 

 

################
# rules defined locally in Makefile
##





################

objs : $(LIBOBJS)
 
# this is the end of the file 
