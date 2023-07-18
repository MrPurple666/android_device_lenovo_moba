$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifiers.
PRODUCT_NAME := lineage_misaka
PRODUCT_DEVICE := misaka
PRODUCT_MANUFACTURER := lenovo
PRODUCT_BRAND := lenovo
PRODUCT_MODEL := L79031

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/lineage_misaka.mk

# Inherit from misaka device
$(call inherit-product, device/lenovo/misaka/device.mk)

$(call inherit-product-if-exists, vendor/lenovo/misaka/misaka-vendor.mk)
