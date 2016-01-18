LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := fwtool
LOCAL_SRC_FILES := flash_ec.c flash_mtd.c flash_file.c flash_device.c vboot_interface.c update_fw.c debug_ec.c fwtool.c
LOCAL_SHARED_LIBRARIES := liblog
LOCAL_CFLAGS += -Wno-unused-parameter -DUSE_LOGCAT
LOCAL_C_INCLUDES += bootable/recovery
# For vboot_struct.h
LOCAL_C_INCLUDES += external/vboot_reference/firmware/include

LOCAL_MODULE_TAGS:= eng
LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin

include $(BUILD_EXECUTABLE)
