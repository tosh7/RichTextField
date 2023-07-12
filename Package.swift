// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "RichTextField",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "RichTextField",
            targets: ["RichTextField"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "RichTextField",
            dependencies: [],
            path: "RichTextField/",
            exclude: []
        )
    ]
)

