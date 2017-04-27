# Release name
PRODUCT_RELEASE_NAME := c67ml

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/onyx/c67ml/device_c67ml.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := c67ml
PRODUCT_NAME := cm_c67ml
PRODUCT_BRAND := onyx
PRODUCT_MODEL := c67ml
PRODUCT_MANUFACTURER := onyx
