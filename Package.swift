// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "JustinKaufman",
    products: [
        .executable(name: "JustinKaufman", targets: ["JustinKaufman"])
    ],
    dependencies: [
        .package(url: "https://github.com/johnsundell/publish.git", from: "0.3.0")
    ],
    targets: [
        .target(
            name: "JustinKaufman",
            dependencies: ["Publish"]
        )
    ]
)