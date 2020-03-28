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
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0-rc.1"),
    ],
    targets: [
        .target(name: "S3Signer", dependencies: [
            .product(name: "Vapor", package: "vapor"),
        ]),
    ]
)
