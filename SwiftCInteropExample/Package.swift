// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftCInteropExample",
    products: [
        .library(name: "Library", targets: ["Library", "PureCTarget", "PureCTarget2"]),
    ],
    targets: [
        .systemLibrary(
                name: "CLibrary"
        ),
        .target(name: "Library", dependencies: ["CLibrary"]),
        .target(name: "PureCTarget", cSettings: [CSetting.headerSearchPath("myHeaders")]),
        .target(name: "PureCTarget2", linkerSettings: [LinkerSetting.linkedLibrary("library2")])
    ]
)