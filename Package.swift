// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

 // ref. https://github.com/CocoaPods/Specs/blob/6c4ab4f0d57f70816f3e2cfb8476c02b8c1a6e76/Specs/5/9/a/Google-Mobile-Ads-SDK/8.2.0/Google-Mobile-Ads-SDK.podspec.json

import PackageDescription

let package = Package(
    name: "GoogleMobileAds",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "GoogleMobileAds",
            targets: ["GoogleMobileAdsTarget"]),
    ],
    dependencies: [
        .package(name: "GoogleAppMeasurement",
                 url: "https://github.com/google/GoogleAppMeasurement.git",
                 from:  "8.0.0"
        ),
        .package(name: "GoogleUserMessagingPlatform",
                 url: "https://github.com/quanghits/GoogleUserMessagingPlatform.git",
                 from: "1.1.0")
        
    ],
    targets: [
        .target(name: "GoogleMobileAdsTarget",
                dependencies: [
                    .target(name: "GoogleMobileAds"),
                    .product(name: "UserMessagingPlatform", package: "GoogleUserMessagingPlatform"),
                    .product(name: "GoogleAppMeasurement", package: "GoogleAppMeasurement"),
                ],
                path: "Sources",
                linkerSettings: [
                    .linkedFramework("AudioToolbox"),
                    .linkedFramework("AVFoundation"),
                    .linkedFramework("CFNetwork"),
                    .linkedFramework("CoreGraphics"),
                    .linkedFramework("CoreMedia"),
                    .linkedFramework("CoreTelephony"),
                    .linkedFramework("CoreVideo"),
                    .linkedFramework("MediaPlayer"),
                    .linkedFramework("MessageUI"),
                    .linkedFramework("MobileCoreServices"),
                    .linkedFramework("QuartzCore"),
                    .linkedFramework("Security"),
                    .linkedFramework("StoreKit"),
                    .linkedFramework("SystemConfiguration"),
                    .linkedLibrary("z"),
                    .linkedLibrary("sqlite3")
                ]),
        .binaryTarget(
            name: "GoogleMobileAds",
            path: "Binary/GoogleMobileAds.xcframework"),
//        .binaryTarget(name: "GoogleMobileAdsBinary",
//                      url: "",
//                      checksum: "),
    ]
)
