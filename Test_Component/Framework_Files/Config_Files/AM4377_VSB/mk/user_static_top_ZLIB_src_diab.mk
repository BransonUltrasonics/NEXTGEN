
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






ifeq (,)



endif


# DEP_OBJS = (DEP_OBJS)

# LIB_BASE_NAMES = z zlib

 
_STATIC_LIBOBJS_common_z_user_static_top_ZLIB_src_diab = C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objz/adler32.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objz/compress.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objz/crc32.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objz/deflate.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objz/gzclose.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objz/gzlib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objz/gzread.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objz/gzwrite.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objz/infback.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objz/inffast.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objz/inflate.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objz/inftrees.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objz/trees.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objz/uncompr.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objz/zutil.o 

_usrstarcmdfile_common_z : $(_STATIC_LIBOBJS_common_z_user_static_top_ZLIB_src_diab)

_STATIC_LIBOBJS_common_z += $(_STATIC_LIBOBJS_common_z_user_static_top_ZLIB_src_diab)

__OBJS_TO_CLEAN_ZLIB += $(_STATIC_LIBOBJS_common_z_user_static_top_ZLIB_src_diab)

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libz.a : $(_STATIC_LIBOBJS_common_z_user_static_top_ZLIB_src_diab)

ifndef _DONEBASE_USRST_LIB_common_z

_DONEBASE_USRST_LIB_common_z = TRUE

# LIBBASES += z

# C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common:
#	mkdir -p $@

# C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/obj :
#	mkdir -p $@

usrstlib : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libz.a

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libz.a : | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common

__STATIC_BUILT_LIBS += common_z

__STLIB_common_z = C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libz.a

arcmdfiles : _usrstarcmdfile_common_z

_usrstarcmdfile_common_z :
	$(file >$@,$(sort $(_STATIC_LIBOBJS_common_z)))
	@echo created $@

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libz.a : _usrstarcmdfile_common_z | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common
	C:/WindRiver/compilers/diab-5.9.6.1/WIN32/bin/dar crusv $@ @_usrstarcmdfile_common_z

clean  _layer_clean_ZLIB : _clean_USRST_LIB_BASE_common_z

_clean_USRST_LIB_BASE_common_z :
	rm -f C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libz.a

endif
  
_STATIC_LIBOBJS_common_zlib_user_static_top_ZLIB_src_diab = C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objzlib/adler32.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objzlib/compress.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objzlib/crc32.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objzlib/deflate.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objzlib/gzclose.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objzlib/gzlib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objzlib/gzread.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objzlib/gzwrite.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objzlib/infback.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objzlib/inffast.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objzlib/inflate.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objzlib/inftrees.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objzlib/trees.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objzlib/uncompr.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objzlib/zutil.o

_usrstarcmdfile_common_zlib : $(_STATIC_LIBOBJS_common_zlib_user_static_top_ZLIB_src_diab)

_STATIC_LIBOBJS_common_zlib += $(_STATIC_LIBOBJS_common_zlib_user_static_top_ZLIB_src_diab)

__OBJS_TO_CLEAN_ZLIB += $(_STATIC_LIBOBJS_common_zlib_user_static_top_ZLIB_src_diab)

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libzlib.a : $(_STATIC_LIBOBJS_common_zlib_user_static_top_ZLIB_src_diab)

ifndef _DONEBASE_USRST_LIB_common_zlib

_DONEBASE_USRST_LIB_common_zlib = TRUE

# LIBBASES += zlib

# C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common:
#	mkdir -p $@

# C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/obj :
#	mkdir -p $@

usrstlib : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libzlib.a

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libzlib.a : | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common

__STATIC_BUILT_LIBS += common_zlib

__STLIB_common_zlib = C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libzlib.a

arcmdfiles : _usrstarcmdfile_common_zlib

_usrstarcmdfile_common_zlib :
	$(file >$@,$(sort $(_STATIC_LIBOBJS_common_zlib)))
	@echo created $@

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libzlib.a : _usrstarcmdfile_common_zlib | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common
	C:/WindRiver/compilers/diab-5.9.6.1/WIN32/bin/dar crusv $@ @_usrstarcmdfile_common_zlib

clean  _layer_clean_ZLIB : _clean_USRST_LIB_BASE_common_zlib

_clean_USRST_LIB_BASE_common_zlib :
	rm -f C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libzlib.a

endif

 
   

   

################
# rules defined locally in Makefile
##





################

objs : $(LIBOBJS)
 
# this is the end of the file 
