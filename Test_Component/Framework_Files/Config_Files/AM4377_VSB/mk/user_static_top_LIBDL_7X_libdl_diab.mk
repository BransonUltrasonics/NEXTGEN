
#
# This file is automatically generated by mk/usr/defs.fastlibgen.mk.
#
# build configuration :
#	VSB : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB
#	CPU : ARMARCH7
#	TOOL : diab
#	FP : vector
# 	ENDIAN : little
#	LIB_DIR_TAG = 
#	LIBDIRBASE = common
#	LIBDIRBASE = $(TOOL_COMMON_DIR)$(LIB_DIR_TAG)



-include user_static_top_LIBDL_7X_libdl_diab_funcs.mk



ifeq (,)



endif


# DEP_OBJS = (DEP_OBJS)

# LIB_BASE_NAMES = dl

 
_STATIC_LIBOBJS_common_dl_user_static_top_LIBDL_7X_libdl_diab = C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/debug.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/headers.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/load.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/map_object.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/paths.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/reloc.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/rtld.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/search.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/symbol.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/xmalloc-simple.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/malloc-simple.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/strdup-simple.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/xprintf.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/strerror.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/rtld_sys.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/strsep.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/tlsLibCommon.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/tlsLibGD.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/rtld_start.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/mdreloc.o

_usrstarcmdfile_common_dl : $(_STATIC_LIBOBJS_common_dl_user_static_top_LIBDL_7X_libdl_diab)

_STATIC_LIBOBJS_common_dl += $(_STATIC_LIBOBJS_common_dl_user_static_top_LIBDL_7X_libdl_diab)

__OBJS_TO_CLEAN_LIBDL_7X += $(_STATIC_LIBOBJS_common_dl_user_static_top_LIBDL_7X_libdl_diab)

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libdl.a : $(_STATIC_LIBOBJS_common_dl_user_static_top_LIBDL_7X_libdl_diab)

ifndef _DONEBASE_USRST_LIB_common_dl

_DONEBASE_USRST_LIB_common_dl = TRUE

# LIBBASES += dl

# C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common:
#	mkdir -p $@

# C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl :
#	mkdir -p $@

usrstlib : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libdl.a

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libdl.a : | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common

__STATIC_BUILT_LIBS += common_dl

__STLIB_common_dl = C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libdl.a

arcmdfiles : _usrstarcmdfile_common_dl

_usrstarcmdfile_common_dl :
	$(file >$@,$(sort $(_STATIC_LIBOBJS_common_dl)))
	@echo created $@

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libdl.a : _usrstarcmdfile_common_dl | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common
	C:/WindRiver/compilers/diab-5.9.6.1/WIN32/bin/dar crusv $@ @_usrstarcmdfile_common_dl

clean  _layer_clean_LIBDL_7X : _clean_USRST_LIB_BASE_common_dl

_clean_USRST_LIB_BASE_common_dl :
	rm -f C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libdl.a

endif


 

 

################
# rules defined locally in Makefile
##





################

objs : $(LIBOBJS)
 
# this is the end of the file 