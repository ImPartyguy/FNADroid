LOCAL_PATH := $(call my-dir)/MojoShader

###########################
#
# MojoShader - with lowercase m and s because Xamarin.Android hates us
# (Note: If Xamarin.Android hates us again, switch back to MojoShader with uppercase M and S)
#
###########################

include $(CLEAR_VARS)
LOCAL_MODULE    := mojoshader
LOCAL_SRC_FILES := mojoshader.c mojoshader_common.c mojoshader_opengl.c mojoshader_effects.c
LOCAL_LDLIBS    := -lEGL -lGLESv2 -lm -ldl
LOCAL_CFLAGS += -IGL \
	-DMOJOSHADER_NO_VERSION_INCLUDE \
	-DMOJOSHADER_EFFECT_SUPPORT \
	-DMOJOSHADER_FLIP_RENDERTARGET \
	-DMOJOSHADER_DEPTH_CLIPPING \
	-DMOJOSHADER_XNA4_VERTEX_TEXTURES \
	-DSUPPORT_PROFILE_D3D=0 \
	-DSUPPORT_PROFILE_BYTECODE=0 \
	-DSUPPORT_PROFILE_ARB1=0 \
	-DSUPPORT_PROFILE_ARB1_NV=0 \
	-DSUPPORT_PROFILE_METAL=0 \
	-DSUPPORT_FORMAT_XENOS=0
include $(BUILD_SHARED_LIBRARY)
