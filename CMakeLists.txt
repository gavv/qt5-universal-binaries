cmake_minimum_required(VERSION 3.0)

project(qt-binaries)

include(ExternalProject)

include(ProcessorCount)
ProcessorCount(NUM_CPU)

set(QT_ARCHITECTURES
  x86_64
  arm64
  )

foreach(QT_ARCH IN LISTS QT_ARCHITECTURES)
  set(QT_PREFIX
    "${CMAKE_CURRENT_BINARY_DIR}/qt-${QT_ARCH}-prefix"
    )

  set(QT_OPTS
    -device-option QMAKE_APPLE_DEVICE_ARCHS=${QT_ARCH}
    -prefix "${QT_PREFIX}"
    -opensource
    -confirm-license
    -make libs
    -make tools
    -nomake tests
    -nomake examples
    )

  ExternalProject_Add(qt-${QT_ARCH}
    SOURCE_DIR "${CMAKE_CURRENT_LIST_DIR}/submodules/qt5"
    BINARY_DIR "${CMAKE_CURRENT_BINARY_DIR}/qt-${QT_ARCH}-build"
    LOG_CONFIGURE OFF
    LOG_BUILD OFF
    LOG_INSTALL OFF
    CONFIGURE_COMMAND "${CMAKE_CURRENT_LIST_DIR}/submodules/qt5/configure" ${QT_OPTS}
    BUILD_COMMAND make -j ${NUM_CPU}
    INSTALL_COMMAND make install
    )
endforeach(QT_ARCH IN LISTS QT_ARCHITECTURES)

add_custom_command (
  COMMENT "Creating universal Qt binaries"
  DEPENDS qt-x86_64 qt-arm64
  OUTPUT "${CMAKE_CURRENT_BINARY_DIR}/makeuniversal.log"
  COMMAND cp "${CMAKE_CURRENT_LIST_DIR}/submodules/macdeployqt-universal/bin/makeuniversal" .
  COMMAND chmod +x makeuniversal
  COMMAND
    ./makeuniversal
      "${CMAKE_CURRENT_BINARY_DIR}/qt-universal-prefix"
      "${CMAKE_CURRENT_BINARY_DIR}/qt-x86_64-prefix"
      "${CMAKE_CURRENT_BINARY_DIR}/qt-arm64-prefix"
        > "${CMAKE_CURRENT_BINARY_DIR}/makeuniversal.log"
  )

add_custom_target(qt-universal ALL
  DEPENDS "${CMAKE_CURRENT_BINARY_DIR}/makeuniversal.log"
  )

foreach(QT_ARCH IN LISTS QT_ARCHITECTURES)
  add_dependencies(qt-universal
    qt-${QT_ARCH}
    )
endforeach()
