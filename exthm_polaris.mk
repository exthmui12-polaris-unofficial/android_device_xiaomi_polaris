# exTHmUI 12 product configuration for Xiaomi Mi MIX 2S (polaris)

# Required by exTHmUI build/version/BoardConfig hooks.
EXTHM_BUILD := polaris

# Device hardware configuration. sdm845.mk inherited from device.mk already
# pulls core_64_bit.mk and full_base_telephony.mk.
$(call inherit-product, device/xiaomi/polaris/device.mk)

# exTHmUI common configuration.
$(call inherit-product, vendor/exthm/config/common.mk)

PRODUCT_NAME := exthm_polaris
PRODUCT_DEVICE := polaris
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi MIX 2S
PRODUCT_MANUFACTURER := Xiaomi

# Keep the stock identity used by the selected PE device tree.
BUILD_FINGERPRINT := "Xiaomi/polaris/polaris:8.0.0/OPR1.170623.032/V9.5.19.0.ODGMIFA:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="polaris-user 8.0.0 OPR1.170623.032 V9.5.19.0.ODGMIFA release-keys" \
    PRODUCT_NAME="polaris"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
