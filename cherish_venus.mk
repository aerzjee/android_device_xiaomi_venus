#
# Copyright (C) 2021-2022 CherishOS.
# A beautiful ROM based on AOSP and Pixel with good quality of features.
#
# Device Name : Xiaomi Mi 11 | Device Codename : venus | Device Model : M2011K2G
# The Xiaomi Mi 11 was announced in December 2020 and released globally on February 2021
# 
# CherishOS Trees for venus. Made with ❤️.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from venus device
$(call inherit-product, device/xiaomi/venus/device.mk)

# Inherit some common CherishOS stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Some Properties for User Experience / Boot Sequence.
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_USES_BLUR := true
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
EXTRA_UDFPS_ANIMATIONS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := cherish_venus
PRODUCT_DEVICE := venus
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 11 | venus
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# CherishOS Stuffs
CHERISH_BUILD_TYPE=UNOFFICIAL
WITH_GMS := true
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.cherish.maintainer=kota
