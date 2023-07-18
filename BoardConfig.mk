
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/lenovo/misaka

# AVB
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a9

TARGET_BOARD_PLATFORM := kona

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := kona
TARGET_NO_BOOTLOADER := true

# Bluetooth
TARGET_USE_QTI_BT_STACK := true

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200n8 earlycon=msm_geni_serial,0xa90000 
BOARD_KERNEL_CMDLINE += androidboot.hardware=qcom 
BOARD_KERNEL_CMDLINE += androidboot.console=ttyMSM0 
BOARD_KERNEL_CMDLINE += androidboot.memcg=1 
BOARD_KERNEL_CMDLINE += lpm_levels.sleep_disabled=1 
BOARD_KERNEL_CMDLINE += video=vfb:640x400,bpp=32,memsize=3072000 
BOARD_KERNEL_CMDLINE += msm_rtb.filter=0x237 
BOARD_KERNEL_CMDLINE += service_locator.enable=1 
BOARD_KERNEL_CMDLINE += androidboot.usbcontroller=a600000.dwc3 
BOARD_KERNEL_CMDLINE += swiotlb=2048 loop.max_part=7 cgroup.memory=nokmem,nosocket 
BOARD_KERNEL_CMDLINE += reboot=panic_warm buildvariant=user

BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_IMAGE_NAME := kernel
BOARD_KERNEL_TAGS_OFFSET := 0x00000100

BOARD_RAMDISK_OFFSET := 0x01000000

TARGET_KERNEL_CONFIG := misaka_defcofig
TARGET_KERNEL_SOURCE := kernel/lenovo/misaka

# Kernel - prebuilt
TARGET_FORCE_PREBUILT_KERNEL := true
ifeq ($(TARGET_FORCE_PREBUILT_KERNEL),true)
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilts/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilts/dtb.img
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_INCLUDE_DTB_IN_BOOTIMG := 
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilts/dtbo.img
BOARD_KERNEL_SEPARATED_DTBO := 
endif


# Partitions - Boot
BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)

# Partitions - Cache
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# Partitions - Recovery
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 104857600

# Partitions - Userdata
BOARD_USERDATAIMAGE_PARTITION_SIZE := 239881564160
TARGET_USERIMAGES_USE_EXT4 := true

# Partitions - Super
BOARD_SUPER_PARTITION_SIZE := 9126805504 # TODO: Fix hardcoded value
BOARD_SUPER_PARTITION_GROUPS := lenovo_dynamic_partitions

# Partitions - Dynamic
BOARD_LENOVO_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext product vendor odm
BOARD_LENOVO_DYNAMIC_PARTITIONS_SIZE := 9122611200 # TODO: Fix hardcoded value

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop
TARGET_SYSTEM_EXT_PROP += $(DEVICE_PATH)/system_ext.prop
TARGET_ODM_PROP += $(DEVICE_PATH)/odm.prop


# Fstab
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 30

# Sepolicy
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += device/qcom/sepolicy/private
BOARD_PLAT_PUBLIC_SEPOLICY_DIR += device/qcom/sepolicy/public

# Inherit from the proprietary version
include vendor/lenovo/misaka/BoardConfigVendor.mk

