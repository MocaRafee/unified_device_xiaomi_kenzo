# Copyright 2017 Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from kipper device
$(call inherit-product, device/xiaomi/kenzo/device.mk)

# Inherit some common AOSPA stuff.
$(call inherit-product, vendor/pa/config/common_full_phone.mk)
TARGET_USES_QCOM_BSP := true

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := kenzo
PRODUCT_NAME := pa_kenzo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi Note 3
TARGET_VENDOR := Xiaomi


PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Use the latest approved GMS identifiers unless running a signed build
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="kenzo-user 6.0.1 MMB29M V8.2.1.0.MHOCNDL release-keys"

BUILD_FINGERPRINT=Xiaomi/kenzo/kenzo:6.0.1/MMB29M/V8.2.1.0.MHOCNDL:user/release-keys
