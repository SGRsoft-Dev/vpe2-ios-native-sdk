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
            url: "https://github.com/SGRsoft-Dev/vpe2-ios-native-sdk/releases/download/1.0.6/VPEPlayer.xcframework.zip",
            checksum: "f278d277a8140a5a6b4551e973b3b24926a0a65a7a9afa47b2423900f0c784b9"
        )
    ]
)
