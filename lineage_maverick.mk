#
# Copyright (C) 2022 The LineageOS Project
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
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit some common Lineage Stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Inherit Dalvik heap props for a 10in, 2048MB tablet
$(call inherit-product, frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk)

# Inherit from maverick device
$(call inherit-product, device/amazon/maverick/device.mk)

# Inherit go optimizations for maverick
$(call inherit-product, device/amazon/maverick/go_opt.mk)

PRODUCT_NAME := lineage_maverick
PRODUCT_DEVICE := maverick
PRODUCT_MANUFACTURER := Amazon
PRODUCT_BRAND := Amazon
PRODUCT_MODEL := KFMAWI

PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=maverick \
	PRIVATE_BUILD_DESC="maverick-user 7.0 PS7322 2514 amz-p,release-keys"

BUILD_FINGERPRINT := Amazon/maverick/maverick:7.0/PS7322/2514N:user/amz-p,release-keys
