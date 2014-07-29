# Generic product
PRODUCT_NAME := nosp
PRODUCT_BRAND := nosp
PRODUCT_DEVICE := generic

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# Launcher3 supported devices
ifneq ($(filter nosp_hammerhead,$(TARGET_PRODUCT)),)
PRODUCT_PACKAGES += \
    Launcher3
# Auto-rotate
PRODUCT_PACKAGE_OVERLAYS += \
    #vendor/nosp/overlay/Launcher3
endif

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/nosp/overlay/common
