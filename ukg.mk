# Inherit from glacier device
$(call inherit-product, device/htc/glacier/device.mk)


# Phone
$(call inherit-product, vendor/ukg/config/common_phone.mk)

# Gsm
$(call inherit-product, vendor/ukg/config/common_gsm.mk)

# Name
PRODUCT_RELEASE_NAME := glacier

# Languages
PRODUCT_LOCALES := en_US de_DE zh_CN zh_TW cs_CZ nl_BE nl_NL en_AU en_GB en_CA en_NZ en_SG fr_BE fr_CA fr_FR fr_CH de_AT de_LI de_CH it_IT it_CH ja_JP ko_KR pl_PL ru_RU es_ES ar_EG ar_IL bg_BG ca_ES hr_HR da_DK en_IN en_IE en_ZA fi_FI el_GR iw_IL hi_IN hu_HU in_ID lv_LV lt_LT nb_NO pt_BR pt_PT ro_RO sr_RS sk_SK sl_SI es_US sv_SE tl_PH th_TH tr_TR uk_UA vi_VN

#
# Setup device specific product configuration.
#
PRODUCT_NAME := ukg_glacier
PRODUCT_DEVICE := glacier
PRODUCT_BRAND := HTC
PRODUCT_MODEL := myTouch 4G
PRODUCT_MANUFACTURER := HTC
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=ukg.glacier.$(shell date +%m%d%y).$(shell date +%H%M%S)

# overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_NUMBER=573038 \
    PRODUCT_NAME=glacier \
    TARGET_BUILD_TYPE=user \
    BUILD_VERSION_TAGS=release-keys \
    PRIVATE_BUILD_DESC="2.19.531.1 CL95282 release-keys" \
    BUILD_FINGERPRINT="tmous/htc_glacier/glacier:4.2.2/JDQ39/95282.1:user/release-keys"

# hybrid and other
PRODUCT_COPY_FILES += \
   vendor/ukg/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip \
   vendor/ukg/prebuilt/hybrid_hdpi.conf:system/etc/beerbong/properties.conf 
