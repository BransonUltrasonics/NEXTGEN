
ifndef __HEADER_ACCESS_CRYPTOMISC_INCLUDED
__HEADER_ACCESS_CRYPTOMISC_INCLUDED = TRUE





__SUBSCRIBE_ACCESS_CRYPTOMISC = 



ifneq ($(wildcard $(VSB_USER_PROTECTED_INCLUDE_DIR)/CRYPTOMISC),)

ifneq ($(VSBL_NAME),)
ifeq ($(VSBL_NAME),$(filter $(VSBL_NAME), CRYPTOMISC))
VSBL_LUH += $(OPTION_INCLUDE_DIR)$(VSB_USER_PROTECTED_INCLUDE_DIR)/CRYPTOMISC
endif
endif

endif

endif

