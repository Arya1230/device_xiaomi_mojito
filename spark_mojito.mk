#
# Copyright (C) 2021 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from mojito device
$(call inherit-product, device/xiaomi/mojito/device.mk)

# Inherit some common Spark stuff
TARGET_USES_AOSP_RECOVERY := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_LIVE_WALLPAPERS := false
SPARK_BUILD_TYPE := OFFICIAL

$(call inherit-product, vendor/spark/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := spark_mojito
PRODUCT_DEVICE := mojito
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 10
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ3A.210905.001 7511028 release-keys"

BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ3A.210905.001/7511028:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="mojito" \
    TARGET_DEVICE="mojito"

# Maintainer

PRODUCT_PRODUCT_PROPERTIES += \
    ro.spark.maintainer=Arya1230
