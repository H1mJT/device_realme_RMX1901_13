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
RICE_MAINTAINER := HimJT

# chipset flag (one word only/no spacing)
RICE_CHIPSET := sdm710

# gapps build flag, if not defined build type is vanilla
WITH_GMS := true

# Opt out of google dialer support, compiler will build aosp dialer,
# package type will change from PIXEL -> GMS
TARGET_OPTOUT_GOOGLE_TELEPHONY := true

# Sushi Bootanimation (only 720/1080p/1440 supported. if not defined, bootanimation is google bootanimation)
SUSHI_BOOTANIMATION := 1080

# disable/enable blur support, default is false
TARGET_ENABLE_BLUR := true

# UDFPS ICONS/ANIMATIONS
TARGET_HAS_UDFPS := true

# Spoof build description/fingerprint as pixel device
TARGET_USE_PIXEL_FINGERPRINT := true

# Allow usage of custom binary linker (LD), default is false
TARGET_KERNEL_OPTIONAL_LD := true

TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP := true
WITH_FOD_ANIMATIONS := true
TARGET_USES_BLUR := true
TARGET_WANTS_FOD_ANIMATIONS := true
EXTRA_UDFPS_ANIMATIONS := true



# Inherit from RMX1901 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Realme
PRODUCT_DEVICE := RMX1901
PRODUCT_MANUFACTURER := Realme
PRODUCT_NAME := lineage_RMX1901
PRODUCT_MODEL := Realme X

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="RMX1901" \
    TARGET_DEVICE="RMX1901"


