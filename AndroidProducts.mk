PRODUCT_MAKEFILES := \
	$(LOCAL_DIR)/lineage_moba.mk

COMMON_LUNCH_CHOICES := \
    $(foreach variant, user userdebug eng, lineage_moba-$(variant))
