#!/bin/sh

# Copyright (C) 2011 The CyanogenMod Project
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

VENDOR=lge
DEVICE=lu3100

mkdir -p ../../../vendor/$VENDOR/$DEVICE

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__VENDOR__/$VENDOR/g > ../../../vendor/$VENDOR/$DEVICE/$DEVICE-vendor.mk
# Copyright (C) 2011 The CyanogenMod Project
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

# This file is generated by device/__VENDOR__/__DEVICE__/setup-makefiles.sh

# Live wallpaper packages
PRODUCT_PACKAGES := \\
    LiveWallpapers \\
    LiveWallpapersPicker \\
    VisualizationWallpapers \\
    librs_jni

\$(call inherit-product, vendor/__VENDOR__/__DEVICE__/__DEVICE__-vendor-blobs.mk)
EOF

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__VENDOR__/$VENDOR/g > ../../../vendor/$VENDOR/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2011 The CyanogenMod Project
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

# This file is generated by device/__VENDOR__/__DEVICE__/setup-makefiles.sh

# HAL
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/hw/copybit.lu3100.so:obj/lib/copybit.lu3100.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/hw/copybit.lu3100.so:system/lib/hw/copybit.lu3100.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/hw/gralloc.default.so:obj/lib/gralloc.default.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/hw/gralloc.default.so:system/lib/hw/gralloc.default.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/hw/gralloc.lu3100.so:obj/lib/gralloc.lu3100.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/hw/gralloc.lu3100.so:system/lib/hw/gralloc.lu3100.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/liblgosp-hal.so:system/lib/liblgosp-hal.so

# 3D
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libgsl.so:system/lib/libgsl.so

# Sensor
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/hw/sensors.lu3100.so:system/lib/hw/sensors.lu3100.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bin/ami304d:system/bin/ami304d

# Wifi
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/modules/wireless.ko:system/lib/modules/wireless.ko \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnetutils.so:obj/lib/libnetutils.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnetutils.so:system/lib/libnetutils.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/wl/nvram.txt:system/etc/wl/nvram.txt \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/wl/rtecdc-apsta.bin:system/etc/wl/rtecdc-apsta.bin \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/wl/rtecdc-mfgtest.bin:system/etc/wl/rtecdc-mfgtest.bin \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/wl/rtecdc.bin:system/etc/wl/rtecdc.bin \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bin/dhd:system/bin/dhd \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bin/iperf:system/bin/iperf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bin/wl:system/bin/wl

# Bluetoooth
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bin/BCM4325D1_004.002.004.0262.0275.hcd:system/bin/BCM4325D1_004.002.004.0262.0275.hcd

# Camera
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so

# Audio
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/AudioFilter.csv:system/etc/AudioFilter.csv \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/liba2dp.so:system/lib/liba2dp.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libaudioalsa.so:system/lib/libaudioalsa.so

# Permissions
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/permissions/com.nextreaming.NexSubtitle.xml:system/etc/permissions/com.nextreaming.NexSubtitle.xml \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/permissions/com.qualcomm.location.vzw_library.xml:system/etc/permissions/com.qualcomm.location.vzw_library.xml

# LGE services
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bin/qmuxd:system/bin/qmuxd

# Touchscreen firmware updater
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bin/tsdown:system/bin/tsdown \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/MELFAS_FIRM.bin:system/etc/MELFAS_FIRM.bin

# rmt_storage (What is this?)
#PRODUCT_COPY_FILES += \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/bin/rmt_storage:system/bin/rmt_storage

# port-bridge (What is this?)
#PRODUCT_COPY_FILES += \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/bin/port-bridge:system/bin/port-bridge

# wipeirface (What is this?)
#PRODUCT_COPY_FILES += \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/bin/wiperiface:system/bin/wiperiface

# netmgr (What is this?)
#PRODUCT_COPY_FILES += \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/bin/netmgrd:system/bin/netmgrd \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libdsutils.so:system/lib/libdsutils.so \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnetmgr.so:system/lib/libnetmgr.so

# CKPD-daemon (What is this?)
#PRODUCT_COPY_FILES += \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/bin/CKPD-daemon:system/bin/CKPD-daemon

# RIL
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libril.so:system/lib/libril.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libril-qc-1.so:system/lib/libril-qc-1.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/liboncrpc.so:system/lib/liboncrpc.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libpbmlib.so:system/lib/libpbmlib.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libpdapi.so:system/lib/libpdapi.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libpdsm_atl.so:system/lib/libpdsm_atl.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libqueue.so:system/lib/libqueue.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnv.so:system/lib/libnv.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/liboem_rapi.so:system/lib/liboem_rapi.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libdsm.so:system/lib/libdsm.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libdiag.so:system/lib/libdiag.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libauth.so:system/lib/libauth.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libcm.so:system/lib/libcm.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libwms.so:system/lib/libwms.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libwmsts.so:system/lib/libwmsts.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libgstk_exp.so:system/lib/libgstk_exp.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libqmi.so:system/lib/libqmi.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libdll.so:system/lib/libdll.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libbcmwl.so:system/lib/libbcmwl.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libdss.so:system/lib/libdss.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libqcomm_omx.so:system/lib/libqcomm_omx.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libping_apps.so:system/lib/libping_apps.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libping_mdm.so:system/lib/libping_mdm.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libhardware_legacy.so:obj/lib/libhardware_legacy.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libhardware_legacy.so:system/lib/libhardware_legacy.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libcommondefs.so:system/lib/libcommondefs.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libloc-rpc.so:system/lib/libloc-rpc.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libloc.so:system/lib/libloc.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libsnd.so:system/lib/libsnd.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bin/rild:system/bin/rild

# OMX
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxAdpcmDec.so:system/lib/libOmxAdpcmDec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxQcelpDec.so:system/lib/libOmxQcelpDec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so
#    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxCore.so:system/lib/libOmxCore.so \\

# OMX sharedlib
#PRODUCT_COPY_FILES += \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libomx_sharedlibrary.so:system/lib/libomx_sharedlibrary.so \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libomx_aacdec_sharedlibrary.so:system/lib/libomx_aacdec_sharedlibrary.so \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libomx_amrdec_sharedlibrary.so:system/lib/libomx_amrdec_sharedlibrary.so \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libomx_amrenc_sharedlibrary.so:system/lib/libomx_amrenc_sharedlibrary.so \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libomx_avcdec_sharedlibrary.so:system/lib/libomx_avcdec_sharedlibrary.so \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libomx_m4vdec_sharedlibrary.so:system/lib/libomx_m4vdec_sharedlibrary.so \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libomx_mp3dec_sharedlibrary.so:system/lib/libomx_mp3dec_sharedlibrary.so

# MM
#PRODUCT_COPY_FILES += \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libmm-omxcore.so:system/lib/libmm-omxcore.so

# Opencore
#PRODUCT_COPY_FILES += \\
#   vendor/__VENDOR__/__DEVICE__/proprietary/lib/libopencorehw.so:system/lib/libopencorehw.so \\
#   vendor/__VENDOR__/__DEVICE__/proprietary/lib/libopencore_author.so:system/lib/libopencore_author.so \\
#   vendor/__VENDOR__/__DEVICE__/proprietary/lib/libopencore_common.so:system/lib/libopencore_common.so \\
#   vendor/__VENDOR__/__DEVICE__/proprietary/lib/libopencore_downloadreg.so:system/lib/libopencore_downloadreg.so \\
#   vendor/__VENDOR__/__DEVICE__/proprietary/lib/libopencore_download.so:system/lib/libopencore_download.so \\
#   vendor/__VENDOR__/__DEVICE__/proprietary/lib/libopencore_mp4localreg.so:system/lib/libopencore_mp4localreg.so \\
#   vendor/__VENDOR__/__DEVICE__/proprietary/lib/libopencore_mp4local.so:system/lib/libopencore_mp4local.so \\
#   vendor/__VENDOR__/__DEVICE__/proprietary/lib/libopencore_net_support.so:system/lib/libopencore_net_support.so \\
#   vendor/__VENDOR__/__DEVICE__/proprietary/lib/libopencore_player.so:system/lib/libopencore_player.so \\
#   vendor/__VENDOR__/__DEVICE__/proprietary/lib/libopencore_rtspreg.so:system/lib/libopencore_rtspreg.so \\
#   vendor/__VENDOR__/__DEVICE__/proprietary/lib/libopencore_rtsp.so:system/lib/libopencore_rtsp.so


# DioDict
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/app/DioDict.apk:system/app/DioDict.apk \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libDioDictEngineNative.so:system/lib/libDioDictEngineNative.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libDHWR.so:system/lib/libDHWR.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libPowerDSR.so:system/lib/libPowerDSR.so

# Key
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/app/KoreanIME.apk:system/app/KoreanIME.apk \\
    vendor/__VENDOR__/__DEVICE__/proprietary/usr/keychars/lgosp-hid.kcm.bin:system/usr/keychars/lgosp-hid.kcm.bin \\
    vendor/__VENDOR__/__DEVICE__/proprietary/usr/keychars/lu3100_keypad.kcm.bin:system/usr/keychars/lu3100_keypad.kcm.bin \\
    vendor/__VENDOR__/__DEVICE__/proprietary/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \\
    vendor/__VENDOR__/__DEVICE__/proprietary/usr/keylayout/lgosp-hid.kl:system/usr/keylayout/lgosp-hid.kl

# TDMB
#PRODUCT_COPY_FILES += \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/app/TDMB.apk:system/app/TDMB.apk \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/bin/TdmbDiag:system/bin/TdmbDiag \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/bin/libbroadcast_server:system/bin/libbroadcast_server

# Etc
PRODUCT_COPY_FILES += \\
     vendor/__VENDOR__/__DEVICE__/proprietary/etc/01_qcomm_omx.cfg:system/etc/01_qcomm_omx.cfg \\
     vendor/__VENDOR__/__DEVICE__/proprietary/etc/vold.fstab:system/etc/vold.fstab \\
     vendor/__VENDOR__/__DEVICE__/proprietary/etc/apns-conf.xml:system/etc/apns-conf.xml \\
     vendor/__VENDOR__/__DEVICE__/proprietary/etc/pvplayer.cfg:system/etc/pvplayer.cfg \\
     vendor/__VENDOR__/__DEVICE__/proprietary/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \\
     vendor/__VENDOR__/__DEVICE__/proprietary/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \\
     vendor/__VENDOR__/__DEVICE__/proprietary/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \\
     vendor/__VENDOR__/__DEVICE__/proprietary/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \\
     vendor/__VENDOR__/__DEVICE__/proprietary/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh

# LG OSP
#PRODUCT_COPY_FILES += \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/bin/lgospd_hid:system/bin/lgospd_hid \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/bin/lgospd:system/bin/lgospd \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/lib/liblgosp.so:system/lib/liblgosp.so \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/lib/modules/lgosp-hid.ko:system/lib/modules/lgosp-hid.ko

# LGE LIB
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/liblge_modem_apis.so:system/lib/liblge_modem_apis.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/liblgerft.so:system/lib/liblgerft.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/liblgt_browser.so:system/lib/liblgt_browser.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/liblgt_downloader.so:system/lib/liblgt_downloader.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/liblgtomadrm.so:system/lib/liblgtomadrm.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libbroadcast_frame.so:system/lib/libbroadcast_frame.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libbroadcast_service.so:system/lib/libbroadcast_service.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/liblgt_system.so:system/lib/liblgt_system.so

EOF

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__VENDOR__/$VENDOR/g > ../../../vendor/$VENDOR/$DEVICE/BoardConfigVendor.mk
# Copyright (C) 2011 The CyanogenMod Project
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

# This file is generated by device/__VENDOR__/__DEVICE__/setup-makefiles.sh

USE_CAMERA_STUB := false
EOF
