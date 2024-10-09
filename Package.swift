// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterSwg",
    products: [
        .library(name: "TreeSitterSwg", targets: ["TreeSitterSwg"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ChimeHQ/SwiftTreeSitter", from: "0.8.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterSwg",
            dependencies: [],
            path: ".",
            sources: [
                "src/parser.c",
                // NOTE: if your language has an external scanner, add it here.
            ],
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterSwgTests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterSwg",
            ],
            path: "bindings/swift/TreeSitterSwgTests"
        )
    ],
    cLanguageStandard: .c11
)