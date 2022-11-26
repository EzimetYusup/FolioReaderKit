// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "FolioReaderKit",
    
    products: [
        .library(name: "FolioReaderKit", targets: ["FolioReaderKit"]),
    ],
    
    dependencies: [
        .package(url: "https://github.com/ZipArchive/ZipArchive.git", .exact("2.1.1")),
        .package(url: "https://github.com/cxa/MenuItemKit.git", .exact("3.1.3")),
        .package(url: "https://github.com/zoonooz/ZFDragableModalTransition.git", .exact("0.6.0")),
        .package(url: "https://github.com/tadija/AEXML.git", .exact("4.4.0")),
        .package(url: "https://github.com/ArtSabintsev/FontBlaster.git", .exact("4.1.0")),
        .package(name: "Realm", url: "https://github.com/realm/realm-cocoa.git", .exact("10.7.7"))
    ],
    
    targets: [
        .target(name: "FolioReaderKit", dependencies: ["AEXML", "ZipArchive", "FontBlaster", "MenuItemKit", "ZFDragableModalTransition", "Realm"], path: "Source"),
        .testTarget(name: "FolioReaderKitTests", dependencies: ["FolioReaderKit"]),
    ]
)
