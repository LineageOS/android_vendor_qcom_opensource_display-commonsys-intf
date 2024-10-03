PRODUCT_PACKAGES += vendor.qti.hardware.display.allocator@1.0.vendor \
                    vendor.qti.hardware.display.allocator@3.0.vendor \
                    vendor.qti.hardware.display.composer@1.0.vendor \
                    vendor.qti.hardware.display.composer@2.0.vendor \
                    vendor.display.config@1.0.vendor \
                    vendor.display.config@1.1.vendor \
                    vendor.display.config@1.2.vendor \
                    vendor.display.config@1.3.vendor \
                    vendor.display.config@1.4.vendor \
                    vendor.display.config@1.5.vendor \
                    vendor.display.config@1.6.vendor \
                    vendor.display.config@1.7.vendor \
                    vendor.display.config@1.8.vendor \
                    vendor.display.config@1.9.vendor \
                    vendor.display.config@1.10.vendor \
                    vendor.display.config@1.11.vendor \
                    vendor.display.config@2.0.vendor \
                    vendor.qti.hardware.display.mapper@1.0.vendor \
                    vendor.qti.hardware.display.mapper@1.1.vendor \
                    vendor.qti.hardware.display.mapper@2.0.vendor \
                    vendor.qti.hardware.display.mapper@3.0.vendor \
                    vendor.qti.hardware.display.mapper@4.0.vendor \
                    vendor.qti.hardware.display.mapperextensions@1.0.vendor \
                    vendor.qti.hardware.display.mapperextensions@1.1.vendor \
                    vendor.qti.hardware.display.config-V1-ndk.vendor \
                    vendor.qti.hardware.display.config-V2-ndk.vendor \
                    vendor.qti.hardware.display.config-V3-ndk.vendor \
                    vendor.qti.hardware.display.config-V4-ndk.vendor \
                    vendor.qti.hardware.display.config-V5-ndk.vendor \
                    vendor.qti.hardware.display.config-V6-ndk.vendor \
                    vendor.qti.hardware.display.config-V7-ndk.vendor \
                    vendor.qti.hardware.display.config-V8-ndk.vendor \
                    vendor.qti.hardware.display.config-V9-ndk.vendor \
                    vendor.qti.hardware.display.config-V10-ndk.vendor \
                    vendor.qti.hardware.display.config-V11-ndk.vendor \
                    vendor.qti.hardware.display.composer3-V1-ndk.vendor \
                    vendor.qti.hardware.display.aiqe-V1-ndk \
                    vendor.qti.hardware.display.aiqe-V2-ndk

$(call soong_config_set, qtidisplaycommonsys, qticomposerversion, composer3_v2)

# Enable conditional compilation for HWC's version in the system image.
# Properly determine the system image version to select the appropriate version for the internal
# composer's interface. Two key build properties are PLATFORM_VERSION_CODENAME and PLATFORM_VERSION.
# PLATFORM_VERSION_CODENAME holds the string codename of the current Android version.
# PLATFORM_VERSION contains the version number of the current Android version, which matches
# PLATFORM_VERSION_CODENAME until the FRC stage.
# Example:
# Android V (After FRC)
#   PLATFORM_VERSION_CODENAME = VanillaIceCream, PLATFORM_VERSION = 15
# Android W (Before FRC)
#   PLATFORM_VERSION_CODENAME = W, PLATFORM_VERSION = W
# Android W (After FRC)
#   PLATFORM_VERSION_CODENAME = W, PLATFORM_VERSION = 16

# TODO: Update VanillaIceCream to Android W's code name and update version number below
ifeq ($(PLATFORM_VERSION_CODENAME), $(PLATFORM_VERSION))
    ifeq ($(PLATFORM_VERSION), $(filter $(PLATFORM_VERSION), VanillaIceCream))
        $(call soong_config_set, qtidisplaycommonsys, qticomposerversion, composer3_v4)
    endif
else
    ifeq ($(PLATFORM_VERSION), $(filter $(PLATFORM_VERSION), VanillaIceCream 15))
        $(call soong_config_set, qtidisplaycommonsys, qticomposerversion, composer3_v3)
    endif
endif
