#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)


# Inherit some common derp stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# maintainer flag (one word only/no spacing)
RISING_MAINTAINER := HimJT

# chipset flag (one word only/no spacing)
RISING_CHIPSET := sdm710

# gapps build flag, if not defined build type is vanilla
WITH_GMS := true
TARGET_CORE_GMS := false

# Sushi Bootanimation (only 720/1080p/1440 supported. if not defined, bootanimation is google bootanimation)
SUSHI_BOOTANIMATION := 1080

# disable/enable blur support, default is false
TARGET_ENABLE_BLUR := true

# UDFPS ICONS/ANIMATIONS
TARGET_HAS_UDFPS := true

# Allow usage of custom binary linker (LD), default is false
TARGET_KERNEL_OPTIONAL_LD := true

# Aperture Camera (default: not defined - skipped by the compiler)
TARGET_EXCLUDES_APERTURE := false

# Wether to use google (true) or AOSP (false) telephony package bundle. (defaults: false for gms core, true for pixel builds)
TARGET_USE_GOOGLE_TELEPHONY := true

TARGET_EXCLUDES_SEEDVAULT := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP := true
WITH_FOD_ANIMATIONS := true
TARGET_USES_BLUR := true
TARGET_WANTS_FOD_ANIMATIONS := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_EXCLUDES_AUDIOFX := true


# Inherit from RMX1901 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Realme
PRODUCT_DEVICE := RMX1901
PRODUCT_MANUFACTURER := Realme
PRODUCT_NAME := lineage_RMX1901
PRODUCT_MODEL := Realme X

PRODUCT_GMS_CLIENTID_BASE := android-oppo


PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cheetah-user 13 TQ2A.230405.003.E1 9802792 release-keys" \
    PRODUCT_NAME="RMX1901" \
    TARGET_DEVICE="RMX1901"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/cheetah/cheetah:13/TQ2A.230405.003.E1/9802792:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

