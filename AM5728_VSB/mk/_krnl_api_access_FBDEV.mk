
ifndef __HEADER_ACCESS_FBDEV_INCLUDED
__HEADER_ACCESS_FBDEV_INCLUDED = TRUE





__SUBSCRIBE_ACCESS_FBDEV = 



ifneq ($(wildcard $(VSB_KERNEL_PROTECTED_INCLUDE_DIR)/FBDEV),)

ifneq ($(VSBL_NAME),)
ifeq ($(VSBL_NAME),$(filter $(VSBL_NAME), FBDEV))
VSBL_LKH += $(OPTION_INCLUDE_DIR)$(VSB_KERNEL_PROTECTED_INCLUDE_DIR)/FBDEV
endif
endif

endif

endif

