LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),misaka)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
