# Inherit AOSP device configuration for klte.
$(call inherit-product, device/samsung/klte/full_klte.mk)

# Inherit common product files.
$(call inherit-product, vendor/nosp/configs/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := cm_klte
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := klte
PRODUCT_MODEL := GS 5
PRODUCT_MANUFACTURER := Samsung

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=klte \
    BUILD_FINGERPRINT=samsung/klte/s5:4.4.4/KTU84P/1227136:user/release-keys \
    PRIVATE_BUILD_DESC="klte-user 4.4.4 KTU84P 1227136 release-key"
    



PRODUCT_COPY_FILES += \
    vendor/nosp/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation-alt.zip
