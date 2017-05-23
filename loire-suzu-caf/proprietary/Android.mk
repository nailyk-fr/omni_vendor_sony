# Copyright (C) 2013 Sony Mobile Communication
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
ifeq ($(filter-out suzu,$(TARGET_DEVICE)),)

#
# shared libraries
#
include $(CLEAR_VARS)
LOCAL_MODULE := libta
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_OWNER := Sony Mobile
LOCAL_SRC_FILES_32 := lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_64 := lib64/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_MULTILIB := both
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libqmiservices
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_OWNER := Sony Mobile
LOCAL_SRC_FILES_32 := vendor/lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_64 := vendor/lib64/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_MULTILIB := both
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libdsi_netctrl
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_OWNER := Sony Mobile
LOCAL_SRC_FILES_32 := vendor/lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_64 := vendor/lib64/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_MULTILIB := both
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libqmi_cci
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_OWNER := Sony Mobile
LOCAL_SRC_FILES_32 := vendor/lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_64 := vendor/lib64/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_MULTILIB := both
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libqmi_csi
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_OWNER := Sony Mobile
LOCAL_SRC_FILES_32 := vendor/lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_64 := vendor/lib64/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_MULTILIB := both
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libqmi_common_so
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_OWNER := Sony Mobile
LOCAL_SRC_FILES_32 := vendor/lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_64 := vendor/lib64/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_MULTILIB := both
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libtime_genoff
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_OWNER := Sony Mobile
LOCAL_SRC_FILES_32 := vendor/lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_64 := vendor/lib64/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_MULTILIB := both
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libts_detected_face_hal
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_OWNER := Sony Mobile
LOCAL_SRC_FILES := vendor/lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_MULTILIB := 32
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libts_face_beautify_hal
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_OWNER := Sony Mobile
LOCAL_SRC_FILES := vendor/lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_MULTILIB := 32
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_PREBUILT)

#
# widevine
#
include $(CLEAR_VARS)
LOCAL_MODULE := libdrmwvmplugin
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_OWNER := Sony Mobile
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := lib/drm/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MULTILIB := 32
LOCAL_STRIP_MODULE := true
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib/drm
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libwvdrmengine
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_OWNER := Sony Mobile
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := vendor/lib/mediadrm/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MULTILIB := 32
LOCAL_STRIP_MODULE := true
LOCAL_PACK_MODULE_RELOCATIONS := true
LOCAL_MODULE_PATH := $(TARGET_OUT)/vendor/lib/mediadrm
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libwvdrm_L1
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_OWNER := Sony Mobile
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := vendor/lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MULTILIB := 32
LOCAL_STRIP_MODULE := true
LOCAL_PACK_MODULE_RELOCATIONS := true
LOCAL_MODULE_PATH := $(TARGET_OUT)/vendor/lib
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libwvm
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_OWNER := Sony Mobile
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := vendor/lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MULTILIB := 32
LOCAL_STRIP_MODULE := true
LOCAL_PACK_MODULE_RELOCATIONS := true
LOCAL_MODULE_PATH := $(TARGET_OUT)/vendor/lib
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libWVStreamControlAPI_L1
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_OWNER := Sony Mobile
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := vendor/lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MULTILIB := 32
LOCAL_STRIP_MODULE := true
LOCAL_PACK_MODULE_RELOCATIONS := true
LOCAL_MODULE_PATH := $(TARGET_OUT)/vendor/lib
include $(BUILD_PREBUILT)

endif
endif
