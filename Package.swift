// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "FolioReaderKit",
    platforms: [
                .iOS(.v12),
        ],
    products: [
        .library(name: "FolioReaderKit", targets: ["FolioReaderKit"]),
    ],
    
    dependencies: [
        .package(url: "https://github.com/ZipArchive/ZipArchive.git", .exact("2.4.2")),
        .package(url: "https://github.com/cxa/MenuItemKit.git", .exact("3.0.0")),
        .package(url: "https://github.com/zoonooz/ZFDragableModalTransition.git", .exact("0.6.5")),
        .package(url: "https://github.com/tadija/AEXML.git", .exact("4.3.3")),
        .package(url: "https://github.com/ArtSabintsev/FontBlaster.git", .exact("5.1.0")),
        .package(name: "Realm", url: "https://github.com/realm/realm-cocoa.git", .exact("3.17.0"))
    ],
    
    targets: [
        .target(name: "FolioReaderKit", dependencies: ["AEXML", "ZipArchive", "FontBlaster", "MenuItemKit", "ZFDragableModalTransition", .product(name: "RealmSwift", package: "Realm")],
                path: "Source",
                exclude: ["Info.plist"],
                resources: [
                                .process("Resources/Bridge.js"),
                                .process("Resources/Style.css"),
                                .process("Resources/Fonts")
                            ]
        ),
        .testTarget(name: "FolioReaderKitTests", dependencies: ["FolioReaderKit"]),
    ]
)
