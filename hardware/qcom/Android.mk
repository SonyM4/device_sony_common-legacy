# Board platforms lists to be used for
# TARGET_BOARD_PLATFORM specific featurization
QCOM_BOARD_PLATFORMS += msm8952 msm8996 msm8998 sdm660 sdm845

#List of targets that use video hw
MSM_VIDC_TARGET_LIST := msm8952 msm8996 msm8998 sdm660 sdm845

#List of targets that use master side content protection
MASTER_SIDE_CP_TARGET_LIST := msm8996 msm8998 sdm660 sdm845

audio-hal := hardware/qcom/audio
bt-hal := hardware/qcom/bt/msm8998
gps-hal := hardware/qcom/gps/sdm845
display-hal := hardware/qcom/display/msm8994
QCOM_MEDIA_ROOT := hardware/qcom/media/msm8974
OMX_VIDEO_PATH := mm-video-v4l2
media-hal := $(QCOM_MEDIA_ROOT)

SRC_CAMERA_HAL_DIR ?= vendor/qcom/opensource/camera
SRC_DISPLAY_HAL_DIR := $(display-hal)
SRC_MEDIA_HAL_DIR := $(QCOM_MEDIA_ROOT)
TARGET_KERNEL_VERSION := $(SOMC_KERNEL_VERSION)

include device/sony/common-legacy/hardware/qcom/utils.mk

include $(display-hal)/Android.mk
include $(call all-makefiles-under,$(audio-hal))
include $(call all-makefiles-under,$(bt-hal))
include $(call all-makefiles-under,$(gps-hal))
include $(call all-makefiles-under,$(media-hal))
