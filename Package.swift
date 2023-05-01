// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PomTracker",
    dependencies: [
        .package(url: "https://github.com/nsomar/Guaka.git", .upToNextMajor(from: "0.3.1")),
    ],
    targets: [
        .executableTarget(
            name: "PomTracker",
            dependencies: ["Guaka"]),
        .testTarget(
            name: "PomTrackerTests",
            dependencies: ["PomTracker"]),
    ]
)
