// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "testFraudPackage",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "testFraudPackage",
            targets: ["IronchipCommonsIos", "LBFraudSDKiOS"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
                     name: "IronchipCommonsIos",
                     url: "https://nexus6.kydom.net/repository/FrameworkA/IronchipCommonsIos/IronchipCommonsIos.xcframework.zip",
                    checksum: "3e2664c5c039cce1acbcac71a09e4cd6959ffe860eed956506849d4328299a92"),
        .binaryTarget(
                     name: "LBFraudSDKiOS",
                     url: "https://nexus6.kydom.net/repository/FrameworkA/LBFraudSDKiOS/LBFraudSDKiOS.xcframework.zip",
                     checksum: "7499e3251662549d2668adfbcb61723377f744c44d6773127447e2636af4b608")
    ]
)
