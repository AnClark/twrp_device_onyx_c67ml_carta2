#
# Copyright 2016 The Android Open Source Project
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

# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages. Building a component unconditionally does
# *not* include it on all devices, so it is safe even with hardware-specific
# components.

USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/onyx/c67ml/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := rk3026
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := c67ml

# Kernel / bootimg configurations
# NOTICE: Rockchip's bootimg has its own format, so we must use proprietary tools to build it.
BOARD_CUSTOM_MKBOOTIMG := device/onyx/c67ml/toolchain/mkbootimg-rk
BOARD_KERNEL_CMDLINE := --ramdisk_offset 0x62000000 --second_offset 0x60f00000 --tags_offset 0x60088000
BOARD_KERNEL_BASE := 0x60400000
BOARD_KERNEL_PAGESIZE := 16384
BOARD_CUSTOM_BOOTIMG_MK := device/onyx/c67ml/mkbootimg_rk.mk

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x32000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x20000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x32000000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/onyx/c67ml/kernel

BOARD_HAS_NO_SELECT_BUTTON := true

# TWRP specified settings
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_NO_SCREEN_TIMEOUT := true
TW_NO_CPU_TEMP := true

TW_HAS_DOWNLOAD_MODE := true

# Enable logcat support! Yahoo!
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

# Recovery configurations
TARGET_RECOVERY_INITRC := device/onyx/c67ml/recovery/root/init.rk30board.rc

