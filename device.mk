#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/samsung/a26x
# Inherit from the proprietary version
$(call inherit-product-if-exists, vendor/samsung/a26x/a26x-vendor.mk)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery.fstab:$(TARGET_COPY_OUT_RECOVERY)/root/etc/recovery.fstab \
    $(LOCAL_PATH)/recovery/root/init.recovery.s5e8835.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.s5e8835.rc \
    $(LOCAL_PATH)/recovery/root/init.recovery.samsung.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.samsung.rc \
    $(LOCAL_PATH)/recovery/root/dsms.rc:$(TARGET_COPY_OUT_RECOVERY)/root/dsms.rc \
    $(LOCAL_PATH)/recovery/root/libdsms.recovery.rc:$(TARGET_COPY_OUT_RECOVERY)/root/libdsms.recovery.rc \
    $(LOCAL_PATH)/recovery/root/servicemanager.recovery.rc:$(TARGET_COPY_OUT_RECOVERY)/root/servicemanager.recovery.rc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/dtb.img:dtb.img \
    $(LOCAL_PATH)/prebuilt/dtbo.img:dtbo.img \
    $(LOCAL_PATH)/prebuilt/kernel:kernel
