
ifndef __HEADER_ACCESS_VIP_PROFILES_INCLUDED
__HEADER_ACCESS_VIP_PROFILES_INCLUDED = TRUE





__SUBSCRIBE_ACCESS_VIP_PROFILES = 



ifneq ($(wildcard $(VSB_USER_PROTECTED_INCLUDE_DIR)/VIP_PROFILES),)

ifneq ($(VSBL_NAME),)
ifeq ($(VSBL_NAME),$(filter $(VSBL_NAME), VIP_PROFILES))
VSBL_LUH += $(OPTION_INCLUDE_DIR)$(VSB_USER_PROTECTED_INCLUDE_DIR)/VIP_PROFILES
endif
endif

endif

endif
