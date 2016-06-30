LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := Nfc.apk

LOCAL_PACKAGE_NAME := Nfc

LOCAL_CERTIFICATE := platform

LOCAL_JNI_SHARED_LIBRARIES  := \
        lib/arm64/libmtknfc_dynamic_load_jni \
        lib/arm64/libnfc_mt6605_jni

LOCAL_MODULE := Nfc

LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)

LOCAL_MODULE_CLASS := APPS

include $(BUILD_PREBUILT)
