#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This file includes all definitions that apply to ALL Archos devices, and
# are also specific to Archos devices
#
# Everything in this directory will become public

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/archos/g8/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

#	device/archos/g8/etc/01_Vendor_ti_omx.cfg:system/etc/01_Vendor_ti_omx.cfg \
#	device/archos/g8/system/etc/hw/lights.omap3.so:system/lib/hw/lights.omap3.so	\
#	device/archos/g8/system/binaries/su:system/xbin/su	\

PRODUCT_COPY_FILES := \
	$(LOCAL_KERNEL):kernel \
	device/archos/g8/ueventd.rc:root/ueventd.rc \
<<<<<<< HEAD
	device/archos/g8/system/scripts/create_nodes.sh:system/xbin/create_nodes.sh \
	device/archos/g8/system/scripts/log_kernel.sh:system/xbin/log_kernel.sh \
	device/archos/g8/system/scripts/log_kernel1.sh:system/xbin/log_kernel1.sh \
	device/archos/g8/system/binaries/su:system/xbin/su	\
	device/archos/g8/system/scripts/create_nodes_alsa.sh:system/xbin/create_nodes_alsa.sh \
	device/archos/g8/system/scripts/load_modules.sh:system/xbin/load_modules.sh \
	device/archos/g8/system/scripts/load_alsa.sh:system/xbin/load_alsa.sh \
	device/archos/g8/system/scripts/archos.inc:root/archos.inc \
	device/archos/g8/system/scripts/update_market.sh:/system/xbin/update_market.sh \
	device/archos/g8/system/binaries/pvrsrvinit:system/bin/pvrsrvinit	\
	device/archos/g8/system/binaries/create_nvs:system/xbin/create_nvs \
	device/archos/g8/system/binaries/abcbox:system/xbin/abcbox \
	device/archos/g8/system/binaries/fix_permissions:system/xbin/fix_permissions \
	device/archos/g8/system/idc_files/goodix-gt801.idc:system/usr/idc/goodix-gt801.idc	\
	device/archos/g8/system/idc_files/Vendor_227d_Product_070a.idc:system/usr/idc/Vendor_227d_Product_070a.idc	\
	device/archos/g8/system/idc_files/Vendor_227d_Product_0709.idc:system/usr/idc/Vendor_227d_Product_0709.idc	\
	device/archos/g8/system/idc_files/Vendor_227d_Product_0a1a.idc:system/usr/idc/Vendor_227d_Product_0a1a.idc	\
	device/archos/g8/system/idc_files/Vendor_227d_Product_0a19.idc:system/usr/idc/Vendor_227d_Product_0a19.idc	\
	device/archos/g8/system/etc/egl/egl.cfg:system/lib/egl/egl.cfg \
	device/archos/g8/system/etc/hw/sensors.omap3.so:system/lib/hw/sensors.omap3.so	\
	device/archos/g8/system/etc/bluetooth/main.conf:system/etc/bluetooth/main.conf	\
	device/archos/g8/system/etc/vold.fstab:system/etc/vold.fstab	\
	device/archos/g8/system/etc/vold.conf:system/etc/vold.conf	\
	device/archos/g8/system/etc/asound.conf:system/etc/asound.conf \
	device/archos/g8/system/etc/egl/egl.cfg:system/lib/egl/egl.cfg \
	device/archos/g8/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
	device/archos/g8/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
=======
	device/archos/g8/prebuilt/scripts/create_nodes.sh:system/xbin/create_nodes.sh \
	device/archos/g8/prebuilt/scripts/log_kernel.sh:system/xbin/log_kernel.sh \
	device/archos/g8/prebuilt/scripts/log_kernel1.sh:system/xbin/log_kernel1.sh \
	device/archos/g8/prebuilt/scripts/create_nodes_alsa.sh:system/xbin/create_nodes_alsa.sh \
	device/archos/g8/prebuilt/scripts/load_modules.sh:system/xbin/load_modules.sh \
	device/archos/g8/prebuilt/scripts/load_alsa.sh:system/xbin/load_alsa.sh \
	device/archos/g8/prebuilt/scripts/archos.inc:root/archos.inc \
	device/archos/g8/prebuilt/scripts/update_market.sh:/system/xbin/update_market.sh \
>>>>>>> Lots of change - OpenGL libs from I9003 - Boardconfig.mk - device.mk - Script to make images - sensors HAL test
	frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/base/data/etc/com.tmobile.software.themes.xml:system/etc/permissions/com.tmobile.software.themes.xml \
	frameworks/base/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
	frameworks/base/data/etc/platform.xml:system/etc/permissions/platform.xml \
	frameworks/base/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
	frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
	frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
	frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
	frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
<<<<<<< HEAD
	device/archos/g8/firmware/TIInit_7.2.31.bts:system/etc/firmware/TIInit_7.2.31.bts \
	device/archos/g8/system/app/FileManager.apk:system/app/FileManager.apk \
	device/archos/g8/system/app/Home.apk:system/app/Home.apk \
	device/archos/g8/system/app/Music.apk:system/app/Music.apk
=======
	device/archos/g8/firmware/TIInit_7.2.31.bts:system/etc/firmware/TIInit_7.2.31.bts 
>>>>>>> Lots of change - OpenGL libs from I9003 - Boardconfig.mk - device.mk - Script to make images - sensors HAL test
#	device/archos/g8/system/lib/hw/gralloc.omap3.so:system/lib/hw/gralloc.omap3.so

	
PRODUCT_PACKAGES := \
	liba2dp \
	lights.omap3 \
<<<<<<< HEAD
=======
	sensors.omap3.so \
>>>>>>> Lots of change - OpenGL libs from I9003 - Boardconfig.mk - device.mk - Script to make images - sensors HAL test
	libexifgnu \
	hwcomposer.default \
	overlay.omap3 \
	acoustics.omap3 \
	audio.a2dp.default \
	acoustics.default \
	alsa.omap3 \
	audio.primary.omap3 \
	libaudioutils \
	libaudiohw_legacy \
	libasound \
	LiveWallpapers \
	LiveWallpapersPicker \
	VisualizationWallpapers \
	MagicSmokeWallpapers \
	tinyplay \
	tinymix \
	tinycap \
	Home \
	Apollo \
	Trebuchet \
	MusicFX \
	SpareParts \
	Setting \
	Camera \
	Superuser \
	su \
	FileManager \
	com.android.future.usb.accessory \
	dhcpcd.conf \
	TQS_D_1.7.ini \
	make_ext4fs \
	overlay.omap3 \
	dhcpcd.conf \
	libCustomWifi \
	wlan_cu \
        calibrator \
        hcitool \
        hciattach \
        hcidump \
	uim-sysfs \
	camera.omap3 \
	libOMX.TI.Video.Decoder \
	libOMX.TI.Video.encoder \
	libOMX.TI.VPP \
	libOMX.TI.JPEG.Encoder \
	libOMX.TI.JPEG.decoder \
	libOMX.TI.WMA.decode \
	libOMX.TI.WBAMR.encode \
	libOMX.TI.WBAMR.decode \
	libOMX.TI.AMR.encode \
	libOMX.TI.AMR.decode \
	libOMX.TI.MP3.decode \
	libOMX.TI.G729.encode \
	libOMX.TI.G729.decode \
	libOMX.TI.G726.encode \
	libOMX.TI.G726.decode \
	libOMX.TI.G722.encode \
	libOMX.TI.G722.decode \
	libOMX.TI.G711.encode \
	libOMX.TI.G711.decode \
	libOMX.TI.AAC.decode \
	libVendor_ti_omx \
	libPERF \
	PERF_reader \
	libOMX_Core \
	libLCML \
	01_Vendor_ti_omx.cfg \
	libVendor_ti_omx_config_parser \
	libstagefrighthw \
	libbridge \
	dspexec \
	make_ext4fs \
	com.android.future.usb.accessory \
	charger_res_images \
	libhwui \
	charger \
	Launcher2 \
	Music \
	cexec.out \
	OMXPolicyManager \
	libqos \
	libion \
	libOMX_ResourceManagerProxy \
	dynreg.out



DEVICE_PACKAGE_OVERLAYS := device/archos/g8/overlay

PRODUCT_PROPERTY_OVERRIDES := \
	com.ti.omap_enhancement=true \
	wifi.interface=tiwlan0 \
	net.dns1=8.8.8.8 \
	net.dns2=8.8.4.4 \
	qemu.hw.mainkeys=1 \
	wifi.supplicant_scan_interval=180 \
	ro.display.switch=1 \
	ro.opengles.version=131072 \
	persist.service.sv.enable=1 \
	jpeg.libskiahw.encoder.enable=1 \
	jpeg.libskiahw.decoder.enable=1 \
	jpeg.libskiahw.decoder.thresh=350000 \
	jpeg.libskiahw.encoder.thresh=0 \
	persist.sys.strictmode.visual=0 \
	persist.sys.strictmode.disable=1 \
	hwui.render_dirty_regions=false \
	persist.sys.usb.config=mass_storage,adb \
	ro.ui.fullscreen=false \
	ro.kernel.android.checkjni=0 \
	ro.carrier=wifi-only \
	view.touch_slop=8 \
	view.minimum_fling_velocity=25 \
	view.scroll_friction=0.008 \
	ro.ril.disable.power.collapse=1 \
	debug.performance.tuning=1 \
	video.accelerate.hw=1 \
	dalvik.vm.lockprof.threshold=150 \
	dalvik.vm.verify_bytecode=false \
	ro.mot.hw.HAC=1 \
	dalvik.vm.checkjni=false \
	dalvik.vm.verify-bytecode=false \
	ro.kernel.checkjni=0 \
	dalvik.vm.execution-mode=int:jit \
	persist.sys.use_dithering=1 \
	alsa.mixer.playback.master=default \
	alsa.mixer.capture.master=Analog \
	ro.setupwizard.enable_bypass=1 \
	ro.telephony.default_network=0 \
	dalvik.vm.heapstartsize=5m \
	dalvik.vm.heapgrowthlimit=48m \
	dalvik.vm.heapsize=256m 
	


PRODUCT_CHARACTERISTICS := tablet,nosdcard

<<<<<<< HEAD
=======
#PRODUCT_LOCALES += mdpi 

>>>>>>> Lots of change - OpenGL libs from I9003 - Boardconfig.mk - device.mk - Script to make images - sensors HAL test
PRODUCT_TAGS := dalvik.gc.type-precise


$(call inherit-product-if-exists, vendor/archos/g8/device-vendor.mk)
$(call inherit-product, frameworks/base/build/tablet-dalvik-heap.mk)
