#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
# Release name
PRODUCT_RELEASE_NAME := m33x

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from m33x device
$(call inherit-product, device/samsung/m33x/device.mk)


PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/m33x/recovery/root,recovery/root,root)

PRODUCT_DEVICE := m33x
PRODUCT_NAME := twrp_m33x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M336B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung
