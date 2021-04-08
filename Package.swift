// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Segment-Intercom",
    platforms: [
        .iOS(.v10),
        .tvOS(.v10),
        .macOS(.v10_13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Segment-Intercom",
            targets: ["Segment-Intercom"]),
    ],
    dependencies: [
        // Dependencies
        .package(name: "Segment", url: "https://github.com/segmentio/analytics-ios", .upToNextMajor(from: "4.0.0")),
        .package(name: "Intercom", url: "https://github.com/intercom/intercom-ios", .upToNextMajor(from: "9.0.0")),
    ],
    targets: [
        .target(
            name: "Segment-Intercom",
            dependencies: [
                "Segment",
                "Intercom"
            ],
            path: "Segment-Intercom/",
            publicHeadersPath: ""
        )
    ]
)
