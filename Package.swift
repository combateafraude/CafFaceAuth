// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "CafFaceAuth",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "CafFaceAuth",
            targets: ["CafFaceAuthSDK"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/combateafraude/FaceLiveness.git",
            .exact("6.3.0")
        )
    ],
    targets: [
        .binaryTarget(
            name: "CafFaceAuth",
            path: "Sources/CafFaceAuth.xcframework"
        ),
        .target(
            name: "CafFaceAuthSDK",
            dependencies: [
                "CafFaceAuth",
                .product(name: "FaceLiveness", package: "FaceLiveness")
            ],
            path: "./Sources"
        )
    ]
)
