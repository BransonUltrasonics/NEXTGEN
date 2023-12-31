# Automatically generated file: do not edit

##########################
# RASTER_QTPRE Section
##########################


ifdef _WRS_CONFIG_RASTER_QTPRE
VSBL_RASTER_QTPRE_SRC = 
VSBL_RASTER_QTPRE_DEPEND = 
ifdef _WRS_CONFIG_RASTER_1_0_0_2_QTPRE_1_0_0_0
VSBL_RASTER_QTPRE_SRC += RASTER_QTPRE
ifdef _WRS_CONFIG_ARCH_i86
VSBL_RASTER_QTPRE_DEPEND += GPUDEV_ITLI915
endif
VSBL_RASTER_QTPRE_DEPEND += AUDIO_DRV
VSBL_RASTER_QTPRE_DEPEND += EVDEV_DRV
VSBL_RASTER_QTPRE_DEPEND += FBDEV_COMMON
VSBL_RASTER_QTPRE_DEPEND += LANG_LIB_CPLUS_CPLUS_USER_2011
VSBL_RASTER_QTPRE_DEPEND += OPENSSL
VSBL_RASTER_QTPRE_DEPEND += RASTER_COMMON
ifdef _WRS_CONFIG_RASTER_MESA
VSBL_RASTER_QTPRE_DEPEND += RASTER_MESA
endif
ifdef _WRS_CONFIG_ARCH_i86*
VSBL_RASTER_QTPRE_DEPEND += RASTER_MESA
endif
ifdef _WRS_CONFIG_GPUDEV_FSLVIVGPU
VSBL_RASTER_QTPRE_DEPEND += GPUDEV_FSLVIVGPU
endif
ifdef _WRS_CONFIG_FSL_IMX*
VSBL_RASTER_QTPRE_DEPEND += GPUDEV_FSLVIVGPU
endif
RASTER_QTPRE_FASTBUILD = YES
VSBL_RASTER_QTPRE_PATH = $(WIND_BASE)/pkgs/ui/raster-1.0.0.2/qtpre-1.0.0.0
VSBL_RASTER_QTPRE_VERSION = RASTER_1_0_0_2_QTPRE_1_0_0_0
endif
endif

