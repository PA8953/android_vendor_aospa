# Copyright (C) 2021 Paranoid Android
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Check for target product
ifeq (aospa_bardock,$(TARGET_PRODUCT))

# Product API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit common device configuration
$(call inherit-product, device/bq/msm8953-common/msm8953.mk)

# Inherit device configuration
$(call inherit-product, device/bq/bardock/device.mk)

# Inherit common AOSPA configuration
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

# Override build properties
TARGET_VENDOR := bq
PRODUCT_DEVICE := bardock
PRODUCT_NAME := aospa_bardock
PRODUCT_BRAND := bq
PRODUCT_MODEL := Aquaris X
PRODUCT_MANUFACTURER := bq
BOARD_VENDOR := bq

PRODUCT_GMS_CLIENTID_BASE := android-bq

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=bardock \
        PRIVATE_BUILD_DESC="bardock_bq-user 8.1.0 OPM1.171019.026 2394 release-keys"

BUILD_FINGERPRINT := bq/bardock/bardock:8.1.0/OPM1.171019.026/2394:user/release-keys

endif
