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
            targets: ["QBImagePicker"])
    ],
    targets: [
        .target(
            name: "QBImagePicker",
            path:"QBImagePicker",
            exclude: ["Info.plist"],
            publicHeadersPath: "QBImagePicker"
//            resources: [
//                .copy("SKPhotoBrowser.bundle")
//            ]),
            ),
        .testTarget(
            name: "QBImagePickerTests",
            dependencies: ["QBImagePicker"],
            path: "QBImagePickerTests",
            exclude: ["Info.plist"]
        )
    ]
)
