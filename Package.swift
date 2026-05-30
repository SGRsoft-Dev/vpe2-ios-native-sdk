// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "VPEPlayer",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "VPEPlayer", targets: ["VPEPlayer"])
    ],
    targets: [
        .binaryTarget(
            name: "VPEPlayer",
            url: "https://github.com/SGRsoft-Dev/vpe2-ios-native-sdk/releases/download/1.0.0/VPEPlayer.xcframework.zip",
            checksum: "748ccf2fc463fc395ab2c3d37061c7edeaad7055151d2bb8fdadca0d0e2c7c48"
        )
    ]
)
