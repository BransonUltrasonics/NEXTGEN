
ifndef __HEADER_ACCESS_SDMMC_HOST_INCLUDED
__HEADER_ACCESS_SDMMC_HOST_INCLUDED = TRUE





__SUBSCRIBE_ACCESS_SDMMC_HOST = 



ifneq ($(wildcard $(VSB_KERNEL_PROTECTED_INCLUDE_DIR)/SDMMC_HOST),)

ifneq ($(VSBL_NAME),)
ifeq ($(VSBL_NAME),$(filter $(VSBL_NAME), SDMMC_HOST))
VSBL_LKH += $(OPTION_INCLUDE_DIR)$(VSB_KERNEL_PROTECTED_INCLUDE_DIR)/SDMMC_HOST
endif
endif

endif

endif

