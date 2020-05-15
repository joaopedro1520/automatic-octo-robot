# automatic-octo-robot


run carthage command to install frameworks

carthage bootstrap --no-build && pushd Carthage/Checkouts/Cuckoo/Cuckoo.xcodeproj/xcshareddata/xcschemes && find . ! -name "Cuckoo-iOS.xcscheme" ! -name "Cuckoo-macOS.xcscheme" -delete && popd && carthage build --platform iOS --no-use-binaries --cache-builds
