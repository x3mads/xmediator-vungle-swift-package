// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorVungle",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "XMediatorVungle", targets: ["XMediatorVungleTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git", exact: "7.7.7"),
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
            linkerSettings: [
                .linkedFramework("AdSupport"),
            ]
        ),
        .binaryTarget(
            name: "XMediatorVungle",
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorVungle/XMediatorVungle-7.7.7.0.zip",
            checksum: "0d32c6561b65f88ad5237009eb5b44790fed618238369c63102446f724c6d149"
        ),
    ]
)
