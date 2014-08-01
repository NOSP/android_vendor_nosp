
# Inherit AOSP device configuration for hammerhead.
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Inherit common product files.
$(call inherit-product, vendor/nosp/configs/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := nosp_hammerhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := hammerhead
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead \
    BUILD_FINGERPRINT=google/hammerhead/hammerhead:4.4.4/KTU84P/1227136:user/release-keys \
    PRIVATE_BUILD_DESC="hammerhead-user 4.4.4 KTU84P 1227136 release-key"
    
# Kernel inline build
TARGET_KERNEL_SOURCE := kernel/lge/hammerhead
TARGET_KERNEL_CONFIG := custom_hammerhead_defconfig
TARGET_VARIANT_CONFIG := custom_hammerhead_defconfig
TARGET_SELINUX_CONFIG := custom_hammerhead_defconfig


PRODUCT_COPY_FILES += \
    vendor/nosp/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation-alt.zip
