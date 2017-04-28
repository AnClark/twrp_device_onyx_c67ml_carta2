$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/onyx/c67ml/c67ml-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/onyx/c67ml/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/onyx/c67ml/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

#$(call inherit-product, device/onyx/c67ml/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_c67ml
PRODUCT_DEVICE := c67ml
