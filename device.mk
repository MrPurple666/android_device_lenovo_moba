#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

PRODUCT_PACKAGES += \
    otapreopt_script

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Namespaces
PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service


# Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *


# Rootdir
PRODUCT_PACKAGES += \
    auto_save_stop_aplog.sh \
    stop_aplog.sh \
    init.qcom.efs.sync.sh \
    install-recovery.sh \
    qca6234-service.sh \
    init.qcom.coex.sh \
    kernellog.sh \
    init.qti.chg_policy.sh \
    init.qti.qcv.sh \
    init.qcom.usb.sh \
    init.qcom.class_core.sh \
    catch_aplog.sh \
    init.qcom.early_boot.sh \
    init.qcom.sdio.sh \
    init.qti.dcvs.sh \
    qseelog.sh \
    init.crda.sh \
    clean_aplog.sh \
    init.qcom.sh \
    modemlog_setup.sh \
    modemlog.sh \
    init.qcom.sensors.sh \
    init.qti.display_boot.sh \
    aplog.sh \
    batterylogcontrol.sh \
    init.mdm.sh \
    batterylog.sh \
    copy_aplog.sh \
    init.class_main.sh \
    init.qcom.post_boot.sh \
    init.qti.media.sh \

PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.usb.rc \
    init.lenovo.common.rc \
    init.qcom.factory.rc \
    init.target.wigig.rc \
    init.lenovo.rc \
    init.qcom.rc \
    init.qti.ufs.rc \
    init.lenovo.usb.configfs.rc \
    init.target.rc \
    init.recovery.qcom.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.qcom:$(TARGET_COPY_OUT_RAMDISK)/fstab.qcom

# Shipping API
PRODUCT_SHIPPING_API_LEVEL := 29

