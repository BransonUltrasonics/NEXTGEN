
#
# This file is automatically generated by mk/usr/defs.fastlibgen.mk.
#
# build configuration :
#	VSB : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB
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

 
_STATIC_LIBOBJS_common_c_user_static_top_CORE_USER_src_diab_posix_mm = C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/usr/lib/common/objc/mmanLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/usr/lib/common/objc/shmLib.o  C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/usr/lib/common/objc/devMemLib.o

_usrstarcmdfile_common_c : $(_STATIC_LIBOBJS_common_c_user_static_top_CORE_USER_src_diab_posix_mm)

_STATIC_LIBOBJS_common_c += $(_STATIC_LIBOBJS_common_c_user_static_top_CORE_USER_src_diab_posix_mm)

__OBJS_TO_CLEAN_CORE_USER += $(_STATIC_LIBOBJS_common_c_user_static_top_CORE_USER_src_diab_posix_mm)

C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/usr/lib/common/libc.a : $(_STATIC_LIBOBJS_common_c_user_static_top_CORE_USER_src_diab_posix_mm)

ifndef _DONEBASE_USRST_LIB_common_c

_DONEBASE_USRST_LIB_common_c = TRUE

# LIBBASES += c

# C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/usr/lib/common:
#	mkdir -p $@

# C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/usr/lib/common/objc :
#	mkdir -p $@

usrstlib : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/usr/lib/common/libc.a

C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/usr/lib/common/libc.a : | C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/usr/lib/common

__STATIC_BUILT_LIBS += common_c

__STLIB_common_c = C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/usr/lib/common/libc.a

arcmdfiles : _usrstarcmdfile_common_c

_usrstarcmdfile_common_c :
	$(file >$@,$(sort $(_STATIC_LIBOBJS_common_c)))
	@echo created $@

C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/usr/lib/common/libc.a : _usrstarcmdfile_common_c | C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/usr/lib/common
	C:/WindRiverSR500New/compilers/diab-5.9.6.1/WIN32/bin/dar crusv $@ @_usrstarcmdfile_common_c

clean  _layer_clean_CORE_USER : _clean_USRST_LIB_BASE_common_c

_clean_USRST_LIB_BASE_common_c :
	rm -f C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/usr/lib/common/libc.a

endif


 

 

################
# rules defined locally in Makefile
##





################

objs : $(LIBOBJS)
 
# this is the end of the file 