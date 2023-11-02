#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common arrow stuff.
$(call inherit-product, vendor/arrow/config/common_full_phone.mk)

# Inherit from marble device.
$(call inherit-product, device/xiaomi/marble/device.mk)

## Device identifier
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := marble
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := arrow_marble

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# ADDITIONAL
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_FACE_UNLOCK_OPTOUT := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_EXCLUDE_MATLOG := true
TARGET_SUPPORTS_ADAPTIVE_CHARGING := true

# GAPPS
WITH_GAPPS := true
