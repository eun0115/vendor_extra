# GMS
ifeq ($(WITH_GMS), true)
$(call inherit-product, vendor/gms/common/common-vendor.mk)
DEVICE := $(LINEAGE_BUILD)_gms
else
DEVICE := $(LINEAGE_BUILD)
endif

# Signing
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/certs/releasekey
