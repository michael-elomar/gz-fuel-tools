LOCAL_PATH := $(call my-dir)

################################################################################
# gz-fuel-tools
################################################################################

include $(CLEAR_VARS)

LOCAL_MODULE := gz-fuel-tools
LOCAL_DESCRIPTION := A client library and command line tools for interacting with Gazebo Fuel servers.

LOCAL_LIBRARIES := \
	gz-common \
	gz-msgs \
	gz-utils \
	gz-math \
	libzip \
	libyaml \
	jsoncpp \
	libboost


LOCAL_CMAKE_CONFIGURE_ARGS := \
	-DBUILD_TESTING:BOOL=False

LOCAL_CMAKE_CONFIGURE_ENV +=\
	PKG_CONFIG_PATH=$(TARGET_OUT_STAGING)/usr/lib/pkgconfig:$(TARGET_OUT_STAGING)/usr/share/pkgconfig

LOCAL_CXXFLAGS := -std=c++17

LOCAL_EXPORT_C_INCLUDES := $(TARGET_OUT_STAGING)/usr/include/gz/fuel_tools11

LOCAL_EXPORT_LDLIBS := -lgz-fuel_tools

include $(BUILD_CMAKE)

