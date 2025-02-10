#
# SPDX-FileCopyrightText: 2022-2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/motorola/astro/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_astro
PRODUCT_DEVICE := astro
PRODUCT_BRAND := motorola
PRODUCT_MODEL := one fusion
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="astro_retail-user 11 RPLS31.Q2-63-10-2-9 c6698 release-keys" \
    BuildFingerprint=motorola/astro_retail/astro:11/RPLS31.Q2-63-10-2-9/c6698:user/release-keys \
    DeviceProduct=astro_retail
