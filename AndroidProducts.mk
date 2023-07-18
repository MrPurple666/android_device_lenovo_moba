PRODUCT_MAKEFILES := \
	$(LOCAL_DIR)/lineage_misaka.mk

COMMON_LUNCH_CHOICES := \
    $(foreach variant, user userdebug eng, lineage_misaka-$(variant))