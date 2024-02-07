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
            name: "AXPhotoViewer",
            targets: ["AXPhotoViewer"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/alexhillc/AXStateButton", from: "1.1.3"),
        .package(url: "https://github.com/Flipboard/FLAnimatedImage", from: "1.0.0"),
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.0.0"),
        .package(url: "https://github.com/pinterest/PINRemoteImage.git", from: "3.0.0"),
        .package(url: "https://github.com/AFNetworking/AFNetworking.git", from: "3.1.0"),
        .package(url: "https://github.com/onevcat/Kingfisher.git", from: "6.0.0"),
        .package(url: "https://github.com/kean/Nuke.git", from: "10.0.0")
    ],
    targets: [
        .target(
            name: "AXPhotoViewer",
            dependencies: [
                .target(name: "Core"),
                .product(name: "SDWebImage", package: "SDWebImage"),
                .product(name: "PINRemoteImage", package: "PINRemoteImage"),
                .product(name: "AFNetworking", package: "AFNetworking"),
                .product(name: "Kingfisher", package: "Kingfisher"),
                .product(name: "Nuke", package: "Nuke")
            ],
            path: "Source",
            exclude: ["Integrations"]
        ),
        .target(
            name: "Core",
            dependencies: [
                .product(name: "AXStateButton", package: "AXStateButton"),
                .product(name: "FLAnimatedImage", package: "FLAnimatedImage"),
                .product(name: "FLAnimatedImage_tvOS", package: "FLAnimatedImage"),
            ],
            path: "Source",
            sources: ["Classes", "Protocols", "Extensions", "Utilities"]
        )
    ]
)
