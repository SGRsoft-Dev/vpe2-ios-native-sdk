# VPEPlayer (iOS)

네이버 클라우드 플랫폼 **VPE(Video Player Enhancement)** iOS 네이티브 플레이어 SDK — **바이너리 배포(XCFramework)**.

> 이 저장소는 **컴파일된 XCFramework만** 배포합니다(소스 비공개).
> 소스 SDK·이슈·문의는 공급사(SGRsoft / NAVER Cloud)로 연락하세요.

[![SwiftPM](https://img.shields.io/badge/SwiftPM-compatible-brightgreen.svg)](https://swift.org/package-manager/)
![iOS](https://img.shields.io/badge/iOS-16.0%2B-blue.svg)

---

## 요구 사항

| 항목 | 버전 |
|---|---|
| iOS | 16.0+ |
| Swift | 5.9+ |
| Xcode | 15+ |

## 설치 (Swift Package Manager)

Xcode ▸ **File ▸ Add Package Dependencies…** 에 아래 URL 입력:

```
https://github.com/SGRsoft-Dev/vpe2-ios-native-sdk.git
```

또는 `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/SGRsoft-Dev/vpe2-ios-native-sdk.git", from: "1.0.4")
]
```

```swift
import VPEPlayer
```

## 빠른 시작

```swift
import SwiftUI
import VPEPlayer

struct PlayerScreen: View {
    var body: some View {
        VpePlayer(
            accessKey: "YOUR_ACCESS_KEY",
            options: [
                "playlist": [["file": "https://.../index.m3u8"]],
                "aspectRatio": "16/9",
                "autostart": true,
                "muted": true
            ]
        )
    }
}
```

옵션을 JSON 문자열로 줄 수도 있습니다 (웹 `<VpePlayer>` 와 동일 스키마, 느슨한 문법 허용 — 키 따옴표 생략·후행 콤마·주석 OK):

```swift
VpePlayer(accessKey: "YOUR_ACCESS_KEY", optionsJSON: jsonString)
```

## 기능 요약

- **HLS(.m3u8) · MP4 · FairPlay(HLS) DRM** 재생 — 외부 모듈(hls.js/dashjs) 불필요, 순수 `AVPlayer`.
- 라이선스 체크 / 서버·로컬 옵션 머지 / MA(미디어 애널리틱스) 리포팅 / 다국어(ko·ja·en).
- 자막(`vtt`·`srt`) + **시스템 접근성 자막 스타일** 연동, 자막 토글(상태 로컬 저장).
- 화면 캡처/녹화 방지(`screenRecordingPrevention`), PiP/백그라운드 재생, 풀스크린.
- 워터마크, 더블탭 시킹, 컨트롤 자동 숨김, 재생 종료 시 다음 영상 자동 재생.

## 주의 사항

- ⚠️ **DASH(.mpd)는 iOS에서 재생 불가** → 재생 시도 시 `E0010` 에러로 차단됩니다. (iOS는 HLS/MP4/FairPlay만 지원)
- ⚠️ **FairPlay DRM은 실기기에서만 복호화/재생**됩니다(시뮬레이터 불가).
- 디바이스 회전 기반 풀스크린이 필요하면 호스트 앱 `AppDelegate` 에 방향 마스크 연결이 필요합니다:

```swift
func application(_ app: UIApplication,
                 supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
    OrientationManager.shared.currentMask
}
```

`Info.plist` 에 Landscape Left/Right 허용. (상세 절차는 공급사 INTEGRATION 가이드 참조)

## 에러 코드 (요약)

`E0001` 비결제/유효하지 않은 access_key · `E0010` DASH 미지원 · `E0011` DRM 토큰 오류 ·
`E0012` 라이선스 서버 통신 실패 · `E0013` FairPlay 인증서 검증 실패 · `E0014` 캡처/녹화 감지.

## 버전

- **1.0.4** — `VPEPlayer.xcframework` (iOS device + iOS simulator)

## 라이선스 / 문의

© NAVER Cloud / SGRsoft. 사내·계약 라이선스를 따릅니다.
문의: play.sgr@gmail.com
