
ifndef __HEADER_ACCESS_BDM_MTD_INCLUDED
__HEADER_ACCESS_BDM_MTD_INCLUDED = TRUE





__SUBSCRIBE_ACCESS_BDM_MTD = 



ifneq ($(wildcard $(VSB_USER_PROTECTED_INCLUDE_DIR)/BDM_MTD),)

ifneq ($(VSBL_NAME),)
ifeq ($(VSBL_NAME),$(filter $(VSBL_NAME), BDM_MTD))
VSBL_LUH += $(OPTION_INCLUDE_DIR)$(VSB_USER_PROTECTED_INCLUDE_DIR)/BDM_MTD
endif
endif

endif

endif

