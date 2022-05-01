# qt5-universal-binaries [![build](https://github.com/gavv/qt5-universal-binaries/actions/workflows/build.yml/badge.svg)](https://github.com/gavv/qt5-universal-binaries/actions/workflows/build.yml)

Prebuilt Qt5 [universal binaries](https://developer.apple.com/documentation/apple-silicon/building-a-universal-macos-binary) (x86_64 + arm64) for **macOS**. At the moment of writing this, Qt supports universal builds only in 6.x series.

Binaries are built and published automatically using Github Actions. You can either use binaries from this repo, or fork the repo and configure your own build, so that you can completely trust the build results.

Branch    | Description
--------- | ------
[`main`](https://github.com/gavv/qt5-universal-binaries) | build script and github actions config
[`sdk`](https://github.com/gavv/qt5-universal-binaries/tree/sdk) | built Qt SDK

> Note: The `sdk` branch has standard file layout of Qt installation. For instance, Qt tools are in `bin/` directory, and [OSX frameworks](https://developer.apple.com/library/archive/documentation/MacOSX/Conceptual/OSX_Technology_Overview/SystemFrameworks/SystemFrameworks.html), one framework per Qt module, are in `lib/` directory. Frameworks contain both headers and shared libraries, as well as some resources.

The list of published versions is [available here](https://github.com/gavv/qt5-universal-binaries/tags).

Universal binaries are constructed using [macdeployqt-universal](https://github.com/crystalidea/macdeployqt-universal).
