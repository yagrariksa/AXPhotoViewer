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
            targets: ["Core-swift", "Extensions"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/yagrariksa/AXStateButton", .branch("v-1.1.4")),
        .package(url: "https://github.com/Flipboard/FLAnimatedImage", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "Core-swift",
            dependencies: [
                .product(name: "AXStateButton", package: "AXStateButton"),
                .product(name: "FLAnimatedImage", package: "FLAnimatedImage"),
            ],
            path: "Source",
            exclude: [
                "Extensions", 
            ],
            sources: [
                "Classes", 
                "Extensions", 
                "Protocols", 
                "Utilities", 
                "AXBundle.swift",
                "AXConstants.swift",
                "Integrations/SimpleNetworkIntegration.swift"
            ]
        ),
        .target(
            name: "Extensions",
            dependencies: [
                .package(url: "https://github.com/Flipboard/FLAnimatedImage", from: "1.0.0"),
            ],
            path: "Source/Extensions",
            // sources: [
            //     "FLAnimatedImageView+AXExtensions.h",
            //     "FLAnimatedImageView+AXExtensions.m",
            //     "UIImageView+AXExtensions.h",
            //     "UIImageView+AXExtensions.m",
            // ],
            publicHeadersPath: "."
        )
    ]
)
