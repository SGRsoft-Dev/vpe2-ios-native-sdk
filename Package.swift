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
            url: "https://github.com/SGRsoft-Dev/vpe2-ios-native-sdk/releases/download/1.0.3/VPEPlayer.xcframework.zip",
            checksum: "96929a79d612f2b2d750e756c76625413593c0ef558d5e0bd5f89a7001c5aae1"
        )
    ]
)
