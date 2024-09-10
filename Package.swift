// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BrandRepository",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "BrandRepository",
            targets: ["BrandRepository"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/obadasemary/NetworkLayer.git", .upToNextMajor(from: "1.0.4")),
        .package(url: "https://github.com/obadasemary/CoreAPI.git", .upToNextMajor(from: "1.0.1")),
        .package(url: "https://github.com/obadasemary/BrandUseCase.git", .upToNextMajor(from: "1.0.1")),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "BrandRepository",
            dependencies: [
                "CoreAPI",
                "NetworkLayer",
                "BrandUseCase"
            ]
        ),
        .testTarget(
            name: "BrandRepositoryTests",
            dependencies: ["BrandRepository"]
        ),
    ]
)
