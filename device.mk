#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm6150-common
$(call inherit-product, device/xiaomi/sm6150-common/sm6150.mk)

# Call the MiuiCamera setup
$(call inherit-product-if-exists, vendor/miuicamera-courbet/device.mk)

# API level, the device has been commercially launched on
PRODUCT_SHIPPING_API_LEVEL := 30

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Audio
PRODUCT_PACKAGES += \
    libtinycompress \
    sku_courbet_audio_symlink

# Camera
PRODUCT_PACKAGES += \
    libpiex_shim \
    libdng_sdk.vendor

# LunarisDolby
PRODUCT_SOONG_NAMESPACES += \
    packages/apps/LunarisDolby

PRODUCT_PACKAGES += \
    LunarisDolby

# Init scripts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/init.courbet.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.courbet.rc

# IR
PRODUCT_PACKAGES += \
    android.hardware.ir-service.lineage

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.consumerir.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.consumerir.xml

# BCR
$(call inherit-product-if-exists, vendor/bcr/bcr.mk)


# Media
PRODUCT_PACKAGES += \
    libcodec2_soft_common.vendor \
    libcodec2_vndk.vendor \
    libsfplugin_ccodec_utils.vendor \
    libstagefright_foundation-v33

# NFC
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    Tag

PRODUCT_PACKAGES += \
    android.hardware.nfc-service.nxp

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/sku_courbet/android.hardware.nfc.hcef.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/sku_courbet/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.uicc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/sku_courbet/android.hardware.nfc.uicc.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/sku_courbet/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.se.omapi.uicc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/sku_courbet/android.hardware.se.omapi.uicc.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/sku_courbet/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/sku_courbet/com.nxp.mifare.xml

# Overlays
PRODUCT_PACKAGES += \
    ApertureOverlayCourbet \
    FrameworksOverlayCourbet \
    SettingsOverlayCourbet \
    SettingsProviderOverlayCourbet \
    SystemUIOverlayCourbet \
    WifiOverlayCourbet

# Power
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/power/powerhint.json:$(TARGET_COPY_OUT_VENDOR)/etc/powerhint.json

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    android.hardware.sensors@1.0-service

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# System properties
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/properties/build_GLOBAL.prop:$(TARGET_COPY_OUT_ODM)/etc/build_GLOBAL.prop \
    $(LOCAL_PATH)/properties/build_INDIA.prop:$(TARGET_COPY_OUT_ODM)/etc/build_INDIA.prop

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/properties/build_GLOBAL.prop:$(TARGET_COPY_OUT_RECOVERY)/root/build_GLOBAL.prop \
    $(LOCAL_PATH)/properties/build_INDIA.prop:$(TARGET_COPY_OUT_RECOVERY)/root/build_INDIA.prop

# Vendor service manager
PRODUCT_PACKAGES += \
    vndservicemanager

# Gapps
$(call inherit-product-if-exists, vendor/gapps/arm64/arm64-vendor.mk)

# Call the proprietary setup
$(call inherit-product, vendor/xiaomi/courbet/courbet-vendor.mk)
