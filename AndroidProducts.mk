PRODUCT_MAKEFILES := \
	$(LOCAL_DIR)/aosp_moba.mk

COMMON_LUNCH_CHOICES := \
    $(foreach variant, user userdebug eng, aosp_moba-$(variant))
