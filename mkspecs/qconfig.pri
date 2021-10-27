host_build {
    QT_ARCH = x86_64
    QT_BUILDABI = x86_64-little_endian-lp64
    QT_TARGET_ARCH = x86_64
    QT_TARGET_BUILDABI = x86_64-little_endian-lp64
} else {
    QT_ARCH = x86_64
    QT_BUILDABI = x86_64-little_endian-lp64
}
QT.global.enabled_features = shared cross_compile shared framework debug_and_release rpath build_all c++11 c++14 c++17 c++1z c99 c11 thread future concurrent signaling_nan
QT.global.disabled_features = appstore-compliant c++2a pkg-config force_asserts separate_debug_info simulator_and_device static
QT_CONFIG += shared shared qt_framework debug_and_release release debug rpath build_all c++11 c++14 c++17 c++1z concurrent dbus no-pkg-config reduce_exports release_tools stl
CONFIG += shared cross_compile shared qt_framework debug
QT_VERSION = 5.15.2
QT_MAJOR_VERSION = 5
QT_MINOR_VERSION = 15
QT_PATCH_VERSION = 2
QT_GCC_MAJOR_VERSION = 4
QT_GCC_MINOR_VERSION = 2
QT_GCC_PATCH_VERSION = 1
QT_MAC_SDK_VERSION = 11.3
QT_APPLE_CLANG_MAJOR_VERSION = 13
QT_APPLE_CLANG_MINOR_VERSION = 0
QT_APPLE_CLANG_PATCH_VERSION = 0
QT_EDITION = OpenSource
