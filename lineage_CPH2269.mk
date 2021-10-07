# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from CPH2269 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := alps
PRODUCT_DEVICE := CPH2269
PRODUCT_MANUFACTURER := alps
PRODUCT_NAME := lineage_CPH2269
PRODUCT_MODEL := CPH2269

PRODUCT_GMS_CLIENTID_BASE := android-alps
TARGET_VENDOR := alps
TARGET_VENDOR_PRODUCT_NAME := CPH2269
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="sys_oplus_mssi_64_cn-user 11 RP1A.200720.011 1634574792575 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := alps/vnd_oppo6765/oppo6765:11/RP1A.200720.011/1634574792575:user/release-keys
