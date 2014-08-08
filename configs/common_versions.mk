# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

DATE = $(shell vendor/nosp/tools/getdate)

ifneq ($(nosp_BUILD),)
        PRODUCT_PROPERTY_OVERRIDES += \
                ro.nosp.version=$(TARGET_PRODUCT)_$(DATE)
else
	PRODUCT_PROPERTY_OVERRIDES += \
		ro.nosp.version=$(TARGET_PRODUCT)_$(DATE)
endif

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.camera-sound=1
