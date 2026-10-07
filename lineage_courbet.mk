#
# Copyright (C) 2021-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from courbet device
$(call inherit-product, device/xiaomi/courbet/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Blur
TARGET_ENABLE_BLUR := true

# Camera Variant
TARGET_USES_LEICA_HOLY45 := true

PRODUCT_NAME := lineage_courbet
PRODUCT_DEVICE := courbet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 11 Lite
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="courbet_global-user 13 RKQ1.210614.002 14.0.4.0.TKQMIXM release-keys" \
    BuildFingerprint=Xiaomi/courbet_global/courbet:13/RKQ1.210614.002/V14.0.4.0.TKQMIXM:user/release-keys
    SystemModel=$(PRODUCT_SYSTEM_DEVICE) \
    SystemName=$(PRODUCT_SYSTEM_NAME) \
    ProductModel=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)
    
# Axion Flags
AXION_MAINTAINER := Aciss?
AXION_PROCESSOR := Snapdragon™_732G
AXION_CAMERA_REAR_INFO := 64MP+8MP+5MP
AXION_CAMERA_FRONT_INFO := 16MP

TARGET_DISABLE_EPPE := true
TARGET_INCLUDE_AXFX := true

TARGET_DISABLES_LIBPERF := false
TARGET_NEEDS_DOZE_FIX := false

TARGET_DOZE_TAP_PULSE_SUPPORTED := true
TARGET_DOZE_DOUBLE_TAP_PULSE_SUPPORTED := true
TARGET_DOZE_PICKUP_PULSE_SUPPORTED := false
TARGET_DOZE_SIDE_FPS_PULSE_SUPPORTED := false
