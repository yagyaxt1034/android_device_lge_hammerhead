#
# Copyright (C) 2016 The CyanogenMod Project
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

# Temporary build configs
BUILD_BROKEN_USES_BUILD_COPY_HEADERS := true
BUILD_BROKEN_USES_LOCAL_COPY_HEADERS := true
DO_NOT_CHECK_MANUAL_BINDER_INTERFACES := true
PLATFORM_PATH := device/lge/hammerhead

# Platform
TARGET_BOARD_PLATFORM := msm8974

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := krait

# Binder API version
TARGET_USES_64_BIT_BINDER := true

# Assertions
TARGET_BOARD_INFO_FILE := $(PLATFORM_PATH)/board-info.txt

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := hammerhead
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Build
TARGET_USE_SDCLANG := true

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=hammerhead user_debug=31 maxcpus=4 msm_watchdog_v2.enable=1 androidboot.bootdevice=msm_sdcc.1
BOARD_KERNEL_CMDLINE += loop.max_part=7 androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02900000 --tags_offset 0x02700000
BOARD_KERNEL_IMAGE_NAME := zImage-dtb
TARGET_KERNEL_SOURCE := kernel/lge/hammerhead
TARGET_KERNEL_CONFIG := lineageos_hammerhead_defconfig

# QCOM Hardware
BOARD_USES_QCOM_HARDWARE := true

# Audio
BOARD_USES_ALSA_AUDIO := true
AUDIO_FEATURE_LOW_LATENCY_PRIMARY := true
AUDIO_FEATURE_ENABLED_LOW_LATENCY_CAPTURE := true
AUDIO_FEATURE_ENABLED_NEW_SAMPLE_RATE := true
USE_CUSTOM_AUDIO_POLICY := 1

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(PLATFORM_PATH)/bluetooth
BOARD_CUSTOM_BT_CONFIG := $(PLATFORM_PATH)/bluetooth/vnd_hammerhead.txt

# Camera
USE_DEVICE_SPECIFIC_CAMERA:= true
TARGET_PROCESS_SDK_VERSION_OVERRIDE := \
    /system/bin/cameraserver=22 \
    /system/bin/mediaserver=22 \
    /system/bin/mm-qcamera-daemon=22

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true

# Display
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
TARGET_USES_DUAL_DSI_API := true
HAVE_ADRENO_SOURCE:= false
OVERRIDE_RS_DRIVER:= libRSDriver_adreno.so
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
TARGET_HAS_HH_VSYNC_ISSUE := true
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
VSYNC_EVENT_PHASE_OFFSET_NS := 7500000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 5000000
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x2000U | 0x02000000U
TARGET_SCREEN_DENSITY := 480
TARGET_TOUCHBOOST_FREQUENCY:= 1200

# Wifi related defines
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WLAN_DEVICE           := bcmdhd
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_AP      := "/vendor/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_STA     := "/vendor/firmware/fw_bcmdhd.bin"

# Filesystem
TARGET_FS_CONFIG_GEN := device/lge/hammerhead/config.fs

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
BOARD_VENDOR_QCOM_LOC_PDK_FEATURE_SET := true
TARGET_NO_RPC := true

# Enable dex-preoptimization to speed up first boot sequence
ifeq ($(HOST_OS),linux)
  ifneq ($(TARGET_BUILD_VARIANT),eng)
    WITH_DEXPREOPT ?= true
  endif
endif
DONT_DEXPREOPT_PREBUILTS := true
WITH_DEXPREOPT_DEBUG_INFO := false
WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY := true

# Legacy memfd
TARGET_HAS_MEMFD_BACKPORT := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Manifest
DEVICE_MANIFEST_FILE := device/lge/hammerhead/configs/manifest.xml
DEVICE_MATRIX_FILE := device/lge/hammerhead/configs/compatibility_matrix.xml

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 23068672
BOARD_CACHEIMAGE_PARTITION_SIZE := 734003200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 23068672
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13725837312
BOARD_FLASH_BLOCK_SIZE := 131072

# PowerHAL
TARGET_POWERHAL_VARIANT := hammerhead
TARGET_USES_INTERACTION_BOOST := true

# Quirks
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true
TARGET_HAS_LEGACY_CAMERA_HAL1 := true

# Recovery
TARGET_RECOVERY_FSTAB = $(PLATFORM_PATH)/rootdir/etc/fstab.hammerhead
TARGET_RELEASETOOLS_EXTENSIONS := $(PLATFORM_PATH)/releasetools
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_NO_SECURE_DISCARD := true

# Root directory
BOARD_ROOT_EXTRA_FOLDERS := firmware persist

# SELinux
# include device/qcom/sepolicy-legacy/sepolicy.mk
# BOARD_SEPOLICY_DIRS += $(PLATFORM_PATH)/sepolicy
# BOARD_SEPOLICY_M4DEFS += vensys=\(vendor\|system/vendor\)
ifneq ($(TARGET_BUILD_VARIANT),user)
SELINUX_IGNORE_NEVERALLOWS := true
endif

# Shims
TARGET_LD_SHIM_LIBS := \
    /system/vendor/bin/mpdecision|libshim_atomic.so \
    /system/lib/libril-qc-qmi-1.so|libshim_ril.so


# Include the proprietary setup
-include vendor/lge/hammerhead/BoardConfigVendor.mk
