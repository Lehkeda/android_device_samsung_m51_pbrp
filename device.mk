#
# Copyright (C) 2020 The Evolution X Project
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

DEVICE_PATH := device/samsung/m51

# Define Dynamic Partition support
PRODUCT_TARGET_VNDK_VERSION := 29
PRODUCT_SHIPPING_API_LEVEL := 29
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_BUILD_SUPER_PARTITION := false

# A/B
AB_OTA_UPDATER := false
  
# Init
PRODUCT_PACKAGES += \
	fstab.qcom \
	init.m51.rc \
	init.m51nsxx.rc \
	init.msm.usb.configfs.rc \
	init.qcom.factory.rc \
	init.qcom.rc \
	init.qcom.usb.rc \
	init.samsung.bsp.rc \
	init.samsung.rc \
	init.target.rc \
	init.recovery.qcom.rc 	

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)
