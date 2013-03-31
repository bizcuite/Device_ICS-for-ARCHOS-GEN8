#
# Copyright (C) 2011 The Android Open-Source Project
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
#

# These two variables are set first, so they can be overridden
# by BoardConfigVendor.mk

TARGET_PREBUILT_KERNEL := device/archos/g8/Kernel

# Use the non-open-source parts, if they're present
#-include vendor/ti/panda/BoardConfigVendor.mk

# Board properties
TARGET_BOARD_PLATFORM := omap3
TARGET_BOOTLOADER_BOARD_NAME := archos
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
ARCH_ARM_HAVE_VFP := true
TARGET_ARCH_VARIANT_FPU := neon
# TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a8
TARGET_ARCH_VARIANT_FPU := neon
TARGET_OMAP3 := true
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DTARGET_OMAP3 -DOMAP_COMPAT -DBINDER_COMPAT
ARCH_ARM_HAVE_TLS_REGISTER := false
TARGET_arm_CFLAGS := -O3 -fomit-frame-pointer -fstrict-aliasing -funswitch-loops \
                        -fmodulo-sched -fmodulo-sched-allow-regmoves
TARGET_thumb_CFLAGS := -mthumb \
                        -Os \
                        -fomit-frame-pointer \
                        -fstrict-aliasing


TARGET_NO_BOOTLOADER := true
BOARD_KERNEL_BASE := 0x80000000
TARGET_NO_RADIOIMAGE := true


#GRAPHIC CONFIGURATION
DEFAULT_FB_NUM := 0
#BOARD_USE_YUV422I_DEFAULT_COLORFORMAT := true
# HW Graphics (EGL fixes + webkit fix) - see webkit in external
ENABLE_WTF_USE_ACCELERATED_COMPOSITING := true
ENABLE_WEBGL := true
BOARD_EGL_CFG := device/archos/g8/egl.cfg
BOARD_USES_OVERLAY := true
OMAP3_GL := true
BOARD_USES_HGL := true
COMMON_GLOBAL_CFLAGS += -DSURFACEFLINGER_FORCE_SCREEN_RELEASE
COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_EXTERNAL_IMAGE \
                        -DMISSING_EGL_PIXEL_FORMAT_YV12  \
                        -DMISSING_GRALLOC_BUFFERS


#to try later
#ENABLE_SVG := true
#WEBCORE_INSTRUMENTATION := true
#BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true
#crash the tab
#USE_OPENGL_RENDERER := true



# Storage
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/mmcblk2p1
BOARD_SDCARD_DEVICE_INTERNAL := /dev/mmcblk1p1
BOARD_VOLD_MAX_PARTITIONS := 4
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912
BOARD_USERDATAIMAGE_PARTITION_SIZE := 536870912
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_NEVER_UMOUNT_SYSTEM := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/usb_mass_storage/lun1/file"

# Makefile variables and C/C++ macros to recognise current pastry
 ifeq ($(shell test $(PLATFORM_SDK_VERSION) -ge 16 || echo 1),)
    ANDROID_API_JB_OR_LATER := true
    COMMON_GLOBAL_CFLAGS += -DANDROID_API_JB_OR_LATER
endif
ifeq ($(shell test $(PLATFORM_SDK_VERSION) -ge 14 || echo 1),)
     ANDROID_API_ICS_OR_LATER := true
    COMMON_GLOBAL_CFLAGS += -DANDROID_API_ICS_OR_LATER
endif

# Wifi related defines
USES_TI_WL1271 := true
BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := libCustomWifi
BOARD_WLAN_DEVICE := wl1271
#BOARD_SOFTAP_DEVICE := wl1271 // missing libhostapdcli
WPA_SUPPLICANT_VERSION := VER_0_6_X
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/tiwlan_drv.ko"
WIFI_DRIVER_MODULE_NAME := "tiwlan_drv"
WIFI_FIRMWARE_LOADER := "wlan_loader"
AP_CONFIG_DRIVER_WILINK := true

TARGET_PROVIDES_INIT_RC := true

# MultiMedia defines
# audio stuff ok - don't touch it
BUILD_WITH_TI_AUDIO := 1
BUILD_WITH_TI_AUDIO := true
BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true

#bluetooth
BOARD_HAVE_BLUETOOTH := true

# Camera
#USE_CAMERA_STUB := true
USE_CAMERA_STUB := false
BOARD_USES_TI_CAMERA_HAL := true

# OMX Stuff
HARDWARE_OMX := true
OMX_JPEG := true
OMX_VENDOR := ti
TARGET_USE_OMX_RECOVERY := true
TARGET_USE_OMAP_COMPAT  := true
OMX_VENDOR_INCLUDES := \
   hardware/ti/omap3/omx/system/src/openmax_il/omx_core/inc \
  hardware/ti/omap3/omx/image/src/openmax_il/jpeg_enc/inc
OMX_VENDOR_WRAPPER := TI_OMX_Wrapper
BOARD_OPENCORE_LIBRARIES := libOMX_Core
BOARD_OPENCORE_FLAGS := -DHARDWARE_OMX=1
 BOARD_CAMERA_LIBRARIES := libcamera
#Ok verify
#PERF_INSTRUMENTATION := true
#RESOURCE_MANAGER_ENABLED := true
BUILD_JPEG_ENCODER := 1
BUILD_JPEG_DECODER := 1
BUILD_AAC_DECODER := 1
BUILD_MP3_DECODER := 1
BUILD_AMRNB_DECODER := 1
BUILD_AMRWB_DECODER := 1
BUILD_WMA_DECODER := 1
#BUILD_VPP := 1
#BUILD_PV_VIDEO_ENCODERS := 1
#PERF_INSTRUMENTATION := 1

#MISC
WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8
#pb with compilation, on CM7 this permit to fix or prevent the kernel panic under webbrowser (i think more to a network bug)
#DEBUG_V8 := true


#adb has root
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0

#test
#BOARD_USE_CID_ROTATE_34 := true
# Remove this once CM merges the fix
 # Workaround for eglconfig error
#BOARD_NO_RGBX_8888 := true

COMMON_GLOBAL_CFLAGS += -DTARGET_OMAP3 -DOVERLAY_NUM_REQBUFFERS=6
