host_build {
    QT_CPU_FEATURES.x86_64 = cx16 mmx sse sse2 sse3 ssse3 sse4.1
} else {
    QT_CPU_FEATURES.x86_64 = cx16 mmx sse sse2 sse3 ssse3 sse4.1
}
QT.global_private.enabled_features = sse2 alloca_h alloca avx2 dbus dlopen gui network reduce_exports release_tools relocatable sql system-zlib testlib widgets xml
QT.global_private.disabled_features = private_tests alloca_malloc_h android-style-assets dbus-linked gc_binaries intelcet libudev posix_fallocate reduce_relocations stack-protector-strong zstd
QMAKE_LIBS_LIBDL = 
QT_COORD_TYPE = double
QMAKE_LIBS_ZLIB = -lz
CONFIG += cross_compile sse2 aesni sse3 ssse3 sse4_1 sse4_2 avx avx2 avx512f avx512bw avx512cd avx512dq avx512er avx512ifma avx512pf avx512vbmi avx512vl compile_examples f16c largefile precompile_header rdrnd rdseed shani x86SimdAlways
QT_BUILD_PARTS += libs tools
QT_HOST_CFLAGS_DBUS += 
