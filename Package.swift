// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterMermaid",
    products: [
        .library(name: "TreeSitterMermaid", targets: ["TreeSitterMermaid"]),
    ],
    dependencies: [
        .package(url: "https://github.com/tree-sitter/swift-tree-sitter", from: "0.9.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterMermaid",
            dependencies: [],
            path: ".",
            sources: [
                "src/parser.c",
                "src/scanner.c",
            ],
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterMermaidTests",
            dependencies: [
                .product(name: "SwiftTreeSitter", package: "swift-tree-sitter"),
                "TreeSitterMermaid",
            ],
            path: "bindings/swift/TreeSitterMermaidTests"
        )
    ],
    cLanguageStandard: .c11
)
