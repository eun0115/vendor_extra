## Extra
PRODUCT_PACKAGES += \
    LatinIMEGooglePrebuilt

## Fonts
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/prebuilt/fonts/ttf,$(TARGET_COPY_OUT_PRODUCT)/fonts) \
    $(LOCAL_PATH)/prebuilt/fonts/fonts_customization.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/fonts_customization.xml

PRODUCT_PACKAGES += \
    FontHarmonyOsSansOverlay \
    FontInterOverlay \
    FontLinotteSourceOverlay \
    FontManropeOverlay \
    FontOnePlusSansOverlay \
    FontOneplusSlateSourceOverlay \
    FontOppoSansOverlay

# GMS
ifeq ($(WITH_GMS), true)
$(call inherit-product, vendor/gms/common/common-vendor.mk)
DEVICE := $(LINEAGE_BUILD)_gms
else
DEVICE := $(LINEAGE_BUILD)
endif

# ih8sn
PRODUCT_PACKAGES += \
    ih8sn

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ih8sn.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/ih8sn.conf

# Overlays
PRODUCT_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Signing
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/certs/releasekey

# Speed profile services and wifi-service to reduce RAM and storage.
PRODUCT_SYSTEM_SERVER_COMPILER_FILTER := speed-profile
