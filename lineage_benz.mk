#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from benz device
$(call inherit-product, device/oneplus/benz/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

TARGET_DISABLE_EPPE := true

TARGET_INCLUDE_AXFX := true

# Camera information: Rear (50MP Main Sony LYT-600 + 8MP Ultra-wide Sony IMX355), Front (16MP)
AXION_CAMERA_REAR_INFO := 50,8
AXION_CAMERA_FRONT_INFO := 16

# Maintainer name (underscores automatically render as spaces in the UI)
AXION_MAINTAINER := Melkie

# Processor name (Snapdragon 7 Gen 3)
AXION_PROCESSOR := Snapdragon_7_Gen_3

# unless sensor hal / proximity suspend bugs cause Sleep of Death (SOD).
TARGET_NEEDS_DOZE_FIX := false

# Doze Gestures & Ambient Display
# Nord CE 4 supports single-tap / double-tap to wake via touchscreen gesture nodes
TARGET_DOZE_TAP_PULSE_SUPPORTED ?= true
TARGET_DOZE_DOUBLE_TAP_PULSE_SUPPORTED ?= true

# Hand wave / Pick up sensor triggers
TARGET_DOZE_PICKUP_PULSE_SUPPORTED ?= true

# Set to false: Nord CE 4 uses an optical In-Display Fingerprint Sensor (FOD),
# not a capacitive side-mounted fingerprint sensor.
TARGET_DOZE_SIDE_FPS_PULSE_SUPPORTED ?= false

# Charging Flags
TARGET_SUPPORTS_BYPASS_CHARGING := true
TARGET_BYPASS_CHARGING_NODE := /sys/class/power_supply/battery/input_suspend

PRODUCT_NAME := lineage_benz
PRODUCT_DEVICE := benz
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2613

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi-user 16 BP2A.250605.015 1786442851710 release-keys" \
    BuildFingerprint=OnePlus/CPH2613IN/OP5D3FL1:16/TP1A.220905.001/U.R4T2.511ee55-2be21cb-2c3ed02:user/release-keys \
    DeviceName=OP5D3FL1 \
    DeviceProduct=CPH2613 \
    SystemDevice=OP5D3FL1 \
    SystemName=CPH2613
