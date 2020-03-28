// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "S3",
    platforms: [
       .macOS(.v10_15),
    ],
    products: [
        .library(name: "S3Signer", targets: ["S3Signer"]),
        .library(name: "S3Kit", targets: ["S3Kit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0-rc.1"),
        .package(url: "https://github.com/LiveUI/XMLCoding.git", from: "0.1.0"),
    ],
    targets: [
        .target(name: "S3Signer", dependencies: [
            .product(name: "Vapor", package: "vapor"),
        ]),
        .target(name: "S3Kit", dependencies: [
            .product(name: "Vapor", package: "vapor"),
            .product(name: "XMLCoding", package: "XMLCoding"),
        ]),
    ]
)
