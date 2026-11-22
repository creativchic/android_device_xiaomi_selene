#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/selene

# Inherit from mt6768-common
-include device/xiaomi/mt6768-common/BoardConfigCommon.mk

# Asserts
TARGET_OTA_ASSERT_DEVICE := selene,eos

# Display
TARGET_SCREEN_DENSITY := 378

# HIDL
ODM_MANIFEST_SKUS += \
    eos \
    eos_p \
    eos_u

ODM_MANIFEST_EOS_FILES := $(DEVICE_PATH)/configs/vintf/manifest_eos.xml
ODM_MANIFEST_EOS_P_FILES := $(DEVICE_PATH)/configs/vintf/manifest_eos_p.xml
ODM_MANIFEST_EOS_U_FILES := $(DEVICE_PATH)/configs/vintf/manifest_eos_u.xml

# Kernel
TARGET_KERNEL_CONFIG += vendor/selene.config

# Properties
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop

# Inherit the proprietary files
include vendor/xiaomi/selene/BoardConfigVendor.mk
