# Third-party Adreno graphics stack from the Meta Quest 3 driver package
# (V@0837.0.7, module adreno_gpu_driver v2.3). Not an official Qualcomm
# release.
#
# The driver libraries themselves are selected inside
# vendor/oneplus/sm8450-common/Android.bp through Soong select() on the
# soong_config variable gpu_oplus.driver_q3, so this file only carries the
# extra Vulkan 1.3 permission declaration that the OEM tree is missing.
#
# ON BY DEFAULT since 2026-10-22 (GPU_DRIVER_Q3 ?= true in BoardConfig.mk and
# device.mk); fall back with  GPU_DRIVER_Q3=false brunch ovaltine.
#
# Everything this file needs lives in this directory. It used to point at
# vendor/extra/gpu-q3, which held a byte-identical second copy of lib64 (21
# files, 93 MB) left behind when the driver files moved here; that duplicate is
# gone, so vendor/extra no longer needs to carry the driver payload at all.
PRODUCT_COPY_FILES += \
    vendor/oneplus/sm8450-common/gpu-q3/etc/permissions/android.hardware.vulkan.version-1_3.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version-1_3.xml
