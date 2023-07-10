#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from mt6895-common
$(call inherit-product, device/xiaomi/mt6895-common/mt6895-common.mk)

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/xaga/xaga-vendor.mk)

# Overlays
PRODUCT_PACKAGES += \
    FrameworkResOverlay \
    XagaProFrameworkResOverlay \
    SystemUIOverlay \
    XagaProInFrameworkResOverlay \
    SettingsOverlay

DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-lineage
    
# Recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/modules/modules.load.recovery:recovery/root/lib/modules/modules.load.recovery

# Rootdir
PRODUCT_PACKAGES += \
    init.project.rc \
    meta_init.rc
