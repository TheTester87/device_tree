#
# Copyright (C) 2021 The Evolution-X Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from gauguin device
$(call inherit-product, device/xiaomi/gauguin/device.mk)

# Inherit some common Evolution stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := evolution_gauguin
PRODUCT_DEVICE := gauguin
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

#Some Evo-X stuff
BUILD_USERNAME := Dev
BUILD_HOSTNAME := Evolution-X
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_MINI_GAPPS := true
TARGET_ENABLE_BLUR := false
