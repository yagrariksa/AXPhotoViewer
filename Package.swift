// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "AXPhotoViewer",
    platforms: [
        .iOS("8.0"),
        .tvOS("9.0")
    ],
    products: [
        .library(
            name: "Core",
            targets: ["Core"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/yagrariksa/AXStateButton", .branch("master")),
        .package(url: "https://github.com/Flipboard/FLAnimatedImage", from: "1.0.0"),
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.0.0"),
        .package(url: "https://github.com/pinterest/PINRemoteImage.git", from: "3.0.0"),
        .package(url: "https://github.com/yagrariksa/AFNetworking.git", .branch("v3.1.0")),
        .package(url: "https://github.com/onevcat/Kingfisher.git", from: "6.0.0"),
        .package(url: "https://github.com/kean/Nuke.git", from: "10.0.0")
    ],
    targets: [
        .target(
            name: "Core",
            dependencies: [
                .product(name: "AXStateButton", package: "AXStateButton"),
                .product(name: "FLAnimatedImage", package: "FLAnimatedImage"),
                .product(name: "FLAnimatedImage_tvOS", package: "FLAnimatedImage"),
            ],
            path: "Source",
            sources: [
                "Source/Classes", 
                "Source/Extensions", 
                "Source/Protocols", 
                "Source/Utilities", 
                "Source/AXBundle.swift",
                "Source/AXConstants.swift",
                "Source/Integrations/SimpleNetworkIntegration.swift" // Include specific file
            ],
            resources: [
                .copy("Assets") // Include asset catalogs in "Assets" directory
            ]
        )
    ]
)
