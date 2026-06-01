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
            url: "https://github.com/SGRsoft-Dev/vpe2-ios-native-sdk/releases/download/1.0.5/VPEPlayer.xcframework.zip",
            checksum: "eff1a72df52ac579fe09cfa0e1cf5546f740febf540f7278386e907386322515"
        )
    ]
)
