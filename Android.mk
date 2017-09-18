LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    $(call all-java-files-under, core/src/main/java) \
    $(call all-java-files-under, websocket/src/main/java)


LOCAL_MODULE := nanohttpd
LOCAL_MODULE_TAGS := optional
LOCAL_SDK_VERSION := current
LOCAL_PROGUARD_ENABLED := disabled


# Build a static jar file.
include $(BUILD_STATIC_JAVA_LIBRARY)

