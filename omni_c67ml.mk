# Release name
PRODUCT_RELEASE_NAME := c67ml

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/onyx/c67ml/device_c67ml.mk)


## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := c67ml
PRODUCT_NAME := omni_c67ml
PRODUCT_BRAND := onyx
PRODUCT_MODEL := c67ml
PRODUCT_MANUFACTURER := onyx
