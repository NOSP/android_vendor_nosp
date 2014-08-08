
ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

# general properties
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    persist.sys.root_access=1

# enable ADB authentication if not on eng build
ifneq ($(TARGET_BUILD_VARIANT),eng)
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0
endif

# init.d support
PRODUCT_COPY_FILES += \
    vendor/nosp/prebuilt/common/etc/init.local.rc:root/init.nosp.rc \
    vendor/nosp/prebuilt/common/etc/init.d/00start:system/etc/init.d/00start \
    vendor/nosp/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/nosp/prebuilt/common/etc/init.d/02permissions:system/etc/init.d/02permissions \
    vendor/nosp/prebuilt/common/etc/init.d/03sqlite:system/etc/init.d/03sqlite \
    vendor/nosp/prebuilt/common/etc/init.d/04zipalign:system/etc/init.d/04zipalign \
    vendor/nosp/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/nosp/prebuilt/common/bin/sysinit:system/bin/sysinit


# Additional packages
-include vendor/nosp/config/packages.mk

# common boot animation
PRODUCT_COPY_FILES += \
    vendor/nosp/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip

# Inherit common build.prop overrides
-include vendor/nosp/configs/common_versions.mk

# World APNs
PRODUCT_COPY_FILES += \
    vendor/nosp/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml
