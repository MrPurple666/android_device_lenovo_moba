$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Device identifiers.
PRODUCT_NAME := aosp_moba
PRODUCT_DEVICE := moba
PRODUCT_MANUFACTURER := lenovo
PRODUCT_BRAND := lenovo
PRODUCT_MODEL := L79031

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/aosp_moba.mk

# Inherit from moba device
$(call inherit-product, device/lenovo/moba/device.mk)

$(call inherit-product-if-exists, vendor/lenovo/moba/moba-vendor.mk)
 