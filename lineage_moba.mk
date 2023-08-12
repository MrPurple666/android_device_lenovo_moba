#
# Copyright (C) 2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Common AOSP base
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device tree
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Common PE configs
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifiers.
PRODUCT_NAME := lineage_moba
PRODUCT_DEVICE := moba
PRODUCT_MANUFACTURER := lenovo
PRODUCT_BRAND := lenovo
PRODUCT_MODEL := L79031

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/lineage_moba.mk

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="moba_row-user 11 RKQ1.201022.002 12.5.538_220127 release-keys"

BUILD_FINGERPRINT := Lenovo/moba_row/moba:11/RKQ1.201022.002/12.5.538_220127:user/release-keys

$(call inherit-product-if-exists, vendor/lenovo/moba/moba-vendor.mk)


