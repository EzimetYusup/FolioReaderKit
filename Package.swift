// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "FolioReaderKit",
    platforms: [
            .iOS(.v12),
    ],
    products: [
        .library(name: "FolioReaderKit", targets: ["FolioReaderKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/ZipArchive/ZipArchive.git",  from: "2.4.2"),
        .package(url: "https://github.com/cxa/MenuItemKit.git", from: "3.0.0"),
        .package(url: "https://github.com/drearycold/ZFDragableModalTransition.git", from: "0.6.5"),
        .package(url: "https://github.com/tadija/AEXML.git", from: "4.3.3"),
        .package(url: "https://github.com/ArtSabintsev/FontBlaster.git", from: "5.1.0"),
        .package(name: "Realm", url: "https://github.com/realm/realm-cocoa.git", from: "3.17.3"),
    ],
    targets: [
        .target(
            name: "FolioReaderKit",
            dependencies: ["AEXML", "ZipArchive", "FontBlaster", "MenuItemKit", "ZFDragableModalTransition", .product(name: "RealmSwift", package: "Realm")],
            exclude: ["Info.plist"],
            resources: [
                .process("Resources/Bridge.js"),
                .process("Resources/Style.css"),
                .process("Resources/Fonts")
            ]
        ),
        .testTarget(name: "FolioReaderKitTests", dependencies: ["FolioReaderKit"])
    ]
)
    
