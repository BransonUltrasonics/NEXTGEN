
ifndef __HEADER_ACCESS_LANG_LIB_CPLUS_INCLUDED
__HEADER_ACCESS_LANG_LIB_CPLUS_INCLUDED = TRUE





__SUBSCRIBE_ACCESS_LANG_LIB_CPLUS = 



ifneq ($(wildcard $(VSB_USER_PROTECTED_INCLUDE_DIR)/LANG_LIB_CPLUS),)

ifneq ($(VSBL_NAME),)
ifeq ($(VSBL_NAME),$(filter $(VSBL_NAME), LANG_LIB_CPLUS))
VSBL_LUH += $(OPTION_INCLUDE_DIR)$(VSB_USER_PROTECTED_INCLUDE_DIR)/LANG_LIB_CPLUS
endif
endif

endif

endif

