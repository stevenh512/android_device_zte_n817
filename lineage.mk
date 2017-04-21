# Boot animation
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 800

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/zte/n817/n817.mk)

# Google Services client ID
PRODUCT_GMS_CLIENTID_BASE := android-zte

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := n817
PRODUCT_NAME := lineage_n817
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := N817
PRODUCT_MANUFACTURER := ZTE
PRODUCT_RELEASE_NAME := ZTE_WELLINGTON

