#
# Copyright (C) 2022 Cygnus OS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from spes/spesn device
$(call inherit-product, device/xiaomi/spes/device.mk)

# Inherit some common Cygnus stuff.
$(call inherit-product, vendor/cygnus/configs/common.mk)
$(call inherit-product, device/qcom/common/common.mk)

# GApps
WITH_GAPPS := true

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Product Specifics
PRODUCT_NAME := cygnus_spes
PRODUCT_DEVICE := spes
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
