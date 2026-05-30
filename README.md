# VPEPlayer iOS Native SDK (Binary Distribution)

네이버 클라우드 플랫폼용 iOS 비디오 플레이어 SDK입니다.
이 저장소는 **컴파일된 XCFramework 바이너리만** 배포합니다. SDK 소스 코드는 비공개입니다.

## 설치 (Swift Package Manager)

### Xcode

File → Add Package Dependencies... 에서 아래 URL을 입력합니다.

```
https://github.com/SGRsoft-Dev/vpe2-ios-native-sdk.git
```

### Package.swift

```swift
dependencies: [
    .package(url: "https://github.com/SGRsoft-Dev/vpe2-ios-native-sdk.git", from: "1.0.0")
]
```

타겟의 의존성에 추가합니다.

```swift
.target(
    name: "YourApp",
    dependencies: [
        .product(name: "VPEPlayer", package: "vpe2-ios-native-sdk")
    ]
)
```

## 사용법

```swift
import VPEPlayer

let player = VpePlayer(accessKey: "YOUR_ACCESS_KEY", optionsJSON: "{\"playlist\":[{\"file\":\"https://example.com/video.m3u8\"}]}")
```

## 요구 사항

- iOS 16.0+
- Swift 5.9+

## 라이선스

이 저장소는 컴파일된 XCFramework 바이너리만 제공합니다. SDK 소스 코드는 비공개입니다.
