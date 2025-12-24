
LOCAL_PATH := $(call my-dir)

################################################################################
# ignition-fuel-tools
################################################################################

include $(CLEAR_VARS)

LOCAL_MODULE := ign-fuel-tools
LOCAL_DESCRIPTION := A client library and command line tools for interacting with Ignition Fuel servers.

LOCAL_LIBRARIES := \
	ign-common \
	ign-msgs

LOCAL_CMAKE_CONFIGURE_ARGS := \
	-DBUILD_TESTING:BOOL=False

LOCAL_EXPORT_C_INCLUDES := $(TARGET_OUT_STAGING)/usr/include/ignition/fuel_tools4

LOCAL_EXPORT_LDLIBS := \
	-lignition-fuel-tools4

include $(BUILD_CMAKE)

