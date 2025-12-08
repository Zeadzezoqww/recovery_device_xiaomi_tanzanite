#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from device Makefile
$(call inherit-product, device/xiaomi/tanzanite/device.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Product Specifics
PRODUCT_NAME := twrp_tanzanite
PRODUCT_DEVICE := tanzanite
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 24117RN76O
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
