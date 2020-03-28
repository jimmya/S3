// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "S3",
    platforms: [
       .macOS(.v10_15),
    ],
    products: [
        .library(name: "S3Signer", targets: ["S3Signer"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-nio.git", from: "2.0.0")
    ],
    targets: [
        .target(name: "S3Signer", dependencies: [
            .product(name: "NIO", package: "swift-nio"),
            .product(name: "NIOHTTP1", package: "swift-nio")
        ]),
    ]
)
