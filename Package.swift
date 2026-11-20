// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorVungle",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "XMediatorVungle", targets: ["XMediatorVungleTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git", exact: "7.8.0"),
        .package(url: "https://github.com/x3mads/xmediator-swift-package.git", .upToNextMajor(from: "1.145.0")),
    ],
    targets: [
        .target(
            name: "XMediatorVungleTarget",
            dependencies: [
                .target(name: "XMediatorVungle"),
                .product(name: "XMediator", package: "xmediator-swift-package"),
                .product(name: "VungleAdsSDK", package: "VungleAdsSDK-SwiftPackageManager"),
            ],
            path: "XMediatorVungleTarget",
            linkerSettings: []
        ),
        .binaryTarget(
            name: "XMediatorVungle",
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorVungle/XMediatorVungle-7.8.0.0.zip",
            checksum: "0b6388796aebdd8145460000e593bec458a8e83c008024217bdd655d3b96dfc7"
        ),
    ]
)
