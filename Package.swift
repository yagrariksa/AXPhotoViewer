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
                "Classes", 
                "Extensions", 
                "Protocols", 
                "Utilities", 
                "AXBundle.swift",
                "AXConstants.swift",
                "Integrations/SimpleNetworkIntegration.swift"
            ],
            resources: [
                .copy("Assets/AXPhotoViewer.xcassets")
            ]
        )
    ]
)
