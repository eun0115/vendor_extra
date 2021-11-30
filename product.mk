## Extra
PRODUCT_PACKAGES += \
    LatinIMEGooglePrebuilt

## Fonts
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/prebuilt/fonts/ttf,$(TARGET_COPY_OUT_PRODUCT)/fonts) \
    $(LOCAL_PATH)/prebuilt/fonts/fonts_customization.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/fonts_customization.xml

PRODUCT_PACKAGES += \
    FontInterOverlay \
    FontLinotteSourceOverlay \
    FontManropeOverlay \
    FontOnePlusSansOverlay \
    FontOneplusSlateSourceOverlay

# GMS
ifeq ($(WITH_GMS), true)
$(call inherit-product, vendor/gms/common/common-vendor.mk)
DEVICE := $(LINEAGE_BUILD)_gms
else
DEVICE := $(LINEAGE_BUILD)
endif

## Overlays
PRODUCT_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Signing
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/certs/releasekey

