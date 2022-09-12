# Add a couple include paths to use gnustl.

# Make sure bionic is first so we can include system headers.
LOCAL_C_INCLUDES := \
	bionic \
	prebuilts/ndk/current/sources/cxx-stl/gnu-libstdc++/include \
	prebuilts/ndk/current/sources/cxx-stl/gnu-libstdc++/libs/arm64-v8a/include \
	$(LOCAL_C_INCLUDES)

ifeq ($(LOCAL_NDK_STL_VARIANT),c++_static)
LOCAL_STATIC_LIBRARIES += libc++_static libsupc++
endif
ifeq ($(LOCAL_NDK_STL_VARIANT),gnustl_shared)
LOCAL_STATIC_LIBRARIES += libsupc++
LOCAL_SHARED_LIBRARIES += libgnustl_shared
endif
