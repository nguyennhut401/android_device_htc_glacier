#
# Copyright (C) 2011 The CyanogenMod Project
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

# Common msm7x30 configs
$(call inherit-product, device/htc/msm7x30-common/msm7x30.mk)

# Ramdisk
PRODUCT_COPY_FILES += \
    device/htc/glacier/ramdisk/init.glacier.rc:root/init.glacier.rc \
    device/htc/glacier/ramdisk/init.glacier.usb.rc:root/init.glacier.usb.rc \
    device/htc/glacier/ramdisk/ueventd.glacier.rc:root/ueventd.glacier.rc \
    device/htc/glacier/ramdisk/fstab.glacier:root/fstab.glacier

# Build.prop additions
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.com.google.gmsversion=4.0_r1 \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y

DEVICE_PACKAGE_OVERLAYS += device/htc/glacier/overlay

# Gsm config xml file
PRODUCT_COPY_FILES += \
    device/htc/glacier/media/voicemail-conf.xml:system/etc/voicemail-conf.xml 

# Bluetooth and gps
PRODUCT_COPY_FILES += \
    device/htc/glacier/configs/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf \
    device/htc/glacier/configs/gps.conf:system/etc/gps.conf


# GPS
PRODUCT_PACKAGES += \
    gps.glacier

# Keylayouts
PRODUCT_COPY_FILES += \
    device/htc/glacier/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/glacier/keylayout/glacier-keypad.kl:system/usr/keylayout/glacier-keypad.kl

# Keychars
PRODUCT_COPY_FILES += \
    device/htc/glacier/keychars/glacier-keypad.kcm.bin:system/usr/keychars/glacier-keypad.kcm.bin

# Idc files
PRODUCT_COPY_FILES += \
    device/htc/glacier/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
    device/htc/glacier/idc/glacier-keypad.idc:system/usr/idc/glacier-keypad.idc \
    device/htc/glacier/idc/curcial-oj.idc:system/usr/idc/curcial-oj.idc \

# Firmware
PRODUCT_COPY_FILES += \
    device/htc/glacier/firmware/bcm4329.hcd:system/vendor/firmware/bcm4329.hcd \
    device/htc/glacier/firmware/default.acdb:system/etc/firmware/default.acdb \
    device/htc/glacier/firmware/default_org.acdb:system/etc/firmware/default_org.acdb \
    device/htc/glacier/firmware/default_org_WA.acdb:system/etc/firmware/default_org_WA.acdb

# Media config xml file
PRODUCT_COPY_FILES += \
    device/htc/glacier/media/media_profiles.xml:system/etc/media_profiles.xml \
    device/htc/glacier/media/media_codecs.xml:system/etc/media_codecs.xml \
    device/htc/glacier/media/audio_policy.conf:system/etc/audio_policy.conf	

# Vold
PRODUCT_COPY_FILES += \
    device/htc/glacier/configs/vold.fstab:system/etc/vold.fstab

# prebuilt
PRODUCT_COPY_FILES += \
    vendor/mk/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/mk/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Device specific props
$(call inherit-product-if-exists, vendor/htc/glacier/device-vendor.mk)

# Htc audio settings
$(call inherit-product, device/htc/glacier/media_htcaudio.mk)
$(call inherit-product, device/htc/glacier/media_a1026.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

PRODUCT_NAME := slim_glacier
PRODUCT_DEVICE := glacier
PRODUCT_MODEL := slim for glacier
