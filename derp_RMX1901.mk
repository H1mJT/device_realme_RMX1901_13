#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)


# Inherit some common derp stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)


# Inherit some common DerpFest stuff
TARGET_BOOT_ANIMATION_RES := 1080
USE_LEGACY_BOOTANIMATION := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_USES_BLUR := true


# Inherit from RMX1901 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_SYSTEM_NAME := RMX1901
PRODUCT_SYSTEM_DEVICE := RMX1901

PRODUCT_BRAND := Realme
PRODUCT_DEVICE := RMX1901
PRODUCT_MANUFACTURER := Realme
PRODUCT_NAME := derp_RMX1901
PRODUCT_MODEL := Realme X

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="raven-user 13 TP1A.221005.002/9012097 release-keys" \
    TARGET_DEVICE=RMX1901 \
    TARGET_PRODUCT=RMX1901

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/raven/raven:13/TP1A.221005.002/9012097:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
