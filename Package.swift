// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "QBImagePicker",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "QBImagePicker",
            targets: ["QBImagePicker"]),
        .library(
            name: "Test",
            targets: ["Test"])
    ],
    targets: [
        .target(
            name: "QBImagePicker",
            path:"QBImagePicker",
            exclude: ["Info.plist"],
            publicHeadersPath: "include"
//            resources: [
//                .copy("SKPhotoBrowser.bundle")
//            ]),
            ),
        .target(
            name: "Test",
            dependencies: ["QBImagePicker"], path:"Test"
            ),
        .testTarget(
            name: "QBImagePickerTests",
            dependencies: ["QBImagePicker"],
            path: "QBImagePickerTests",
            exclude: ["Info.plist"]
        )
    ]
)
