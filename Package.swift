// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VueFlux",
    platforms: [
        .iOS(.v9),
        .tvOS(.v9),
        .macOS(.v10_10),
        .watchOS(.v2)
    ],
    products: [
        .library(
            name: "VueFlux",
            targets: ["VueFlux"]
        ),
        .library(
            name: "VueFluxReactive",
            targets: ["VueFluxReactive"]
        )
    ],
    targets: [
        .target(
            name: "VueFluxInternalCore",
            path: "VueFluxInternalCore"
        ),
        .target(
            name: "VueFlux",
            dependencies: ["VueFluxInternalCore"],
            path: "VueFlux"
        ),
        .target(
            name: "VueFluxReactive",
            dependencies: ["VueFluxInternalCore"],
            path: "VueFluxReactive"
        )
    ],
    swiftLanguageVersions: [.v4_2]
)
