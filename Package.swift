// swift-tools-version: 5.9
// 공개 배포용 Package.swift — 바이너리 XCFramework (소스 비공개).
// 이 파일을 공개 GitHub repo(SGRsoft-Dev/vpe2-ios-native-sdk) 루트의 Package.swift 로 커밋하세요.
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
            url: "https://github.com/SGRsoft-Dev/vpe2-ios-native-sdk/releases/download/1.0.4/VPEPlayer.xcframework.zip",
            checksum: "22d12c5c389f8cf55f500d923145ea3b4cc5d42a1ea46d8a037463067bbe9bdd"
        )
    ]
)
