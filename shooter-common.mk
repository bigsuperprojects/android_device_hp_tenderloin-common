DEVICE_PACKAGE_OVERLAYS += device/htc/shooter-common/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml

# Aapt
PRODUCT_CHARACTERISTICS := phone
PRODUCT_AAPT_CONFIG := mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

#Art
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=192m \
    dalvik.vm.heapsize=256m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=8m

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.shooter \
    init.shooter.rc \
    init.shooter.power.rc \
    init.shooter.usb.rc \
    ueventd.shooter.rc

# Audio
PRODUCT_PACKAGES += \
   audio.a2dp.default \
   audio.primary.shooter \
   audio.r_submix.default \
   sound_trigger.primary.shooter \
   libsrec_jni \
   libavextensions \
   libavmediaextentions

PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.soundtrigger@2.0-impl

# Audio config
PRODUCT_COPY_FILES += \
    device/htc/shooter-common/configs/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/htc/shooter-common/configs/audio_policy.conf:system/etc/audio_policy.conf

# Bluetooth
PRODUCT_COPY_FILES += \
    device/htc/shooter-common/bluetooth/bt_vendor.conf:/system/etc/bluetooth/bt_vendor.conf \
    device/htc/shooter-common/bluetooth/bluecore6.psr:/system/etc/bluetooth/bluecore6.psr

PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl \
    libbt-vendor

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.device@3.2-impl \
    android.hardware.camera.provider@2.4-impl \
    camera.msm8660

# Display
PRODUCT_PACKAGES += \
    copybit.msm8660 \
    gralloc.msm8660 \
    hwcomposer.msm8660 \
    libgenlock \
    memtrack.msm8660

PRODUCT_PROPERTY_OVERRIDES += debug.hwui.use_buffer_age=false

PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.mapper@2.0-impl

# Drm
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl

# Filesystem management tools
PRODUCT_PACKAGES += \
    fsck.f2fs \
    resize2fs_static

#GNSS HAL
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl

# Init.d
PRODUCT_COPY_FILES += \
    device/htc/shooter-common/prebuilt/etc/init.d/10check_media_minor:system/etc/init.d/10check_media_minor

# IO Scheduler
PRODUCT_PROPERTY_OVERRIDES += \
    sys.io.scheduler=bfq

# keylayouts
PRODUCT_COPY_FILES += \
    device/htc/shooter-common/prebuilt/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl\
    device/htc/shooter-common/prebuilt/usr/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
    device/htc/shooter-common/prebuilt/usr/keylayout/shooter-keypad.kl:system/usr/keylayout/shooter-keypad.kl

# Keychars
PRODUCT_COPY_FILES += \
    device/htc/shooter-common/prebuilt/usr/keychars/shooter-keypad.kcm.bin:system/usr/keychars/shooter-keypad.kcm \
    device/htc/shooter-common/prebuilt/usr/keychars/BT_HID.kcm.bin:system/usr/keychars/BT_HID.kcm

# idc
PRODUCT_COPY_FILES += \
    device/htc/shooter-common/prebuilt/usr/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
    device/htc/shooter-common/prebuilt/usr/idc/shooter-keypad.idc:system/usr/idc/shooter-keypad.idc

# Device Specific Firmware
PRODUCT_COPY_FILES += \
    device/htc/shooter-common/firmware/default_bak.acdb:system/etc/firmware/default_bak.acdb

# Keymaster HAL
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl

# Lights
PRODUCT_PACKAGES += \
    lights.shooter \
    android.hardware.light@2.0-impl

# Low-RAM optimizations
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.low_ram=true \
    persist.sys.force_highendgfx=true \
    dalvik.vm.jit.codecachesize=0 \
    ro.config.max_starting_bg=4 \
    ro.sys.fw.bg_apps_limit=8 \
    ro.sys.fw.use_trim_settings=true \
    ro.sys.fw.empty_app_percent=50 \
    ro.sys.fw.trim_empty_percent=100 \
    ro.sys.fw.trim_cache_percent=100 \
    ro.sys.fw.trim_enable_memory=874512384 \
    ro.sys.fw.bservice_enable=true \
    ro.sys.fw.bservice_limit=5 \
    ro.sys.fw.bservice_age=5000

# Media
PRODUCT_COPY_FILES += \
    device/htc/shooter-common/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/htc/shooter-common/configs/media_codecs.xml:system/etc/media_codecs.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# Memtrack HAL
PRODUCT_PACKAGES += \
    android.hardware.memtrack@1.0-impl

# OMX
PRODUCT_PACKAGES += \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libstagefrighthw

# OMX properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.media.treble_omx=false

# Prebuilts
PRODUCT_COPY_FILES += \
    device/htc/shooter-common/prebuilt/tptoolbox.cfg:tptoolbox.cfg     
# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-impl \
    power.shooter

# Recovery
PRODUCT_COPY_FILES += \
    device/htc/shooter-common/releasetools/install-recovery.sh:$(PRODUCT_OUT)/ota_temp/SYSTEM/bin/install-recovery.sh

# RenderScript HAL
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# Stlport
#PRODUCT_PACKAGES += \
#   libstlport

# Sensors
PRODUCT_PACKAGES += \
    sensors.shooter

# Sensor HAL
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl

# System properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=160 \
    dalvik.vm.dex2oat-flags=--no-watch-dog \
    dalvik.vm.dex2oat-swap=false \
    dalvik.vm.image-dex2oat-filter=speed \
    ro.com.google.networklocation=1 \
    media.stagefright.legacyencoder=true \
    media.stagefright.less-secure=true \
    camera2.portability.force_api=1 \
    qcom.hw.aac.encoder=true \
    debug.composition.type=dyn \
    persist.hwc.mdpcomp.enable=false \
    ro.opengles.version=131072 \
    debug.sf.disable_backpressure=1

# Tools
PRODUCT_PACKAGES += \
    dosfsck \
    librs_jni \
    libmllite \
    libmlplatform \
    ts_srv \
    ts_srv_set \
    mkbootimg

# Vendor Interface Manifest
PRODUCT_COPY_FILES += \
    device/htc/shooter-common/manifest.xml:system/vendor/manifest.xml

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl

# Wifi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service \
    hostapd \
    hostapd_default.conf \
    libnetcmdiface \
    libwpa_client \
    wpa_supplicant \
    wificond \
    wifilogd \
    wpa_supplicant.conf
