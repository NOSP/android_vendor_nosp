
PRODUCT_PACKAGES += \
    Stk

# World APN list
PRODUCT_COPY_FILES += \
    $(SRC_NOSP_DIR)/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# World SPN overrides list
PRODUCT_COPY_FILES += \
    $(SRC_NOSP_DIR)/prebuilt/common/etc/spn-conf.xml:system/etc/spn-conf.xml

