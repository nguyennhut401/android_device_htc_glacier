# Inherit from glacier device
$(call inherit-product, device/htc/glacier/device.mk)

$(call inherit-product, vendor/mk/config/common_full_phone.mk)

$(call inherit-product, vendor/mk/config/gsm.mk)

# Name
PRODUCT_RELEASE_NAME := glacier

# Bootanimation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

#
# Setup device specific product configuration.
#
PRODUCT_NAME := mk_glacier
PRODUCT_DEVICE := glacier
PRODUCT_BRAND := HTC
PRODUCT_MODEL := myTouch 4G
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_glacier BUILD_FINGERPRINT=tmous/htc_glacier/glacier:4.0.3/IML74K/356011.14:user/release-keys PRIVATE_BUILD_DESC="3.32.531.14 CL356011 release-keys" BUILD_NUMBER=356011

