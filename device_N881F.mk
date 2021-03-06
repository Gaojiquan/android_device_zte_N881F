$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += device/zte/N881F/overlay

LOCAL_PATH := $(call my-dir)
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Graphics
PRODUCT_PACKAGES := \
        gralloc.msm7627a \
        hwcomposer.msm7627a \
        copybit.msm7627a

# Camera
PRODUCT_PACKAGES += \
        camera.msm7627a

# Sensor
PRODUCT_PACKAGES += \
        sensors.msm7627a

# Light
PRODUCT_PACKAGES += \
        lights.msm7627a

# Audio
PRODUCT_PACKAGES += \
        audio_policy.msm7627a \
		audio.primary.msm7627a

# Init scripts
PRODUCT_PACKAGES += \
    init.qcom.sh \
	init.qcom.rc \
    init.qcom.class_core.sh \
    init.qcom.class_main.sh \
    init.qcom.usb.sh \
	init.qcom.usb.rc


PRODUCT_COPY_FILES := \
        device/zte/N881F/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab \
        device/zte/N881F/prebuilt/system/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
        device/zte/N881F/prebuilt/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
        device/zte/N881F/prebuilt/system/etc/gps.conf:system/etc/gps.conf

# Bluetooth configuration files
PRODUCT_COPY_FILES += \
        device/zte/N881F/prebuilt/system/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh

# FM configuration files
PRODUCT_COPY_FILES += \
        device/zte/N881F/prebuilt/system/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh

# Wifi configuration files
PRODUCT_COPY_FILES += \
        device/zte/N881F/prebuilt/system/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh

# other configuration files
PRODUCT_COPY_FILES += \
        device/zte/N881F/prebuilt/system/etc/init.ct_fmc.sh:system/etc/init.ct_fmc.sh \
		device/zte/N881F/prebuilt/system/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
		device/zte/N881F/prebuilt/system/etc/init.qcom.composition_type.sh:system/etc/init.qcom.composition_type.sh \
		device/zte/N881F/prebuilt/system/etc/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
		device/zte/N881F/prebuilt/system/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
		device/zte/N881F/prebuilt/system/etc/init.qcom.rendering.sh:system/etc/init.qcom.rendering.sh \
		device/zte/N881F/prebuilt/system/etc/init.qcom.thermald_conf.sh:system/etc/init.qcom.thermald_conf.sh

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
        device/zte/N881F/prebuilt/system/etc/permissions/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
        device/zte/N881F/prebuilt/system/etc/permissions/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
        device/zte/N881F/prebuilt/system/etc/permissions/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
        device/zte/N881F/prebuilt/system/etc/permissions/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
        device/zte/N881F/prebuilt/system/etc/permissions/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
        device/zte/N881F/prebuilt/system/etc/permissions/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
        device/zte/N881F/prebuilt/system/etc/permissions/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
        device/zte/N881F/prebuilt/system/etc/permissions/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
        device/zte/N881F/prebuilt/system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
        device/zte/N881F/prebuilt/system/etc/permissions/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
        device/zte/N881F/prebuilt/system/etc/permissions/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
        device/zte/N881F/prebuilt/system/etc/permissions/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
        device/zte/N881F/prebuilt/system/etc/permissions/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
        device/zte/N881F/prebuilt/system/etc/permissions/cneapiclient.xml:system/etc/permissions/cneapiclient.xml \
        device/zte/N881F/prebuilt/system/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
        device/zte/N881F/prebuilt/system/etc/permissions/com.qualcomm.location.vzw_library.xml:system/etc/permissions/com.qualcomm.location.vzw_library.xml \
        device/zte/N881F/prebuilt/system/etc/permissions/org.simalliance.openmobileapi.xml:system/etc/permissions/org.simalliance.openmobileapi.xml \
        device/zte/N881F/prebuilt/system/etc/permissions/qcnvitems.xml:system/etc/permissions/qcnvitems.xml \
        device/zte/N881F/prebuilt/system/etc/permissions/qcrilhook.xml:system/etc/permissions/qcrilhook.xml \
        device/zte/N881F/prebuilt/system/etc/permissions/ZteDrmClient.xml:system/etc/permissions/ZteDrmClient.xml

$(call inherit-product, build/target/product/full.mk)

$(call inherit-product-if-exists, vendor/zte/N881F/N881F-vendor.mk)
