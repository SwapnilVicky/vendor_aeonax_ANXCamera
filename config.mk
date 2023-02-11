PRODUCT_SOONG_NAMESPACES += \
    vendor/xiaomi/miuicamera

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/xiaomi/miuicamera/proprietary/system/etc,$(TARGET_COPY_OUT_SYSTEM)/etc) \
    $(call find-copy-subdir-files,*,vendor/xiaomi/miuicamera/proprietary/system/priv-app/MiuiCamera/lib,$(TARGET_COPY_OUT_SYSTEM)/priv-app/MiuiCamera/lib) \
    $(call find-copy-subdir-files,*,vendor/xiaomi/miuicamera/proprietary/system/priv-app/MiuiExtraPhoto/lib,$(TARGET_COPY_OUT_SYSTEM)/priv-app/MiuiExtraPhoto/lib)

PRODUCT_PACKAGES += \
    MiuiCamera \
    MiuiExtraPhoto \
    MiuiScanner

# MiuiGallery
ifeq ($(TARGET_SHIPS_GALLERY), true)
PRODUCT_PACKAGES += \
    MiuiGallery

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/xiaomi/miuicamera/proprietary/system/priv-app/MiuiGallery/lib,$(TARGET_COPY_OUT_SYSTEM)/priv-app/MiuiGallery/lib)
endif
