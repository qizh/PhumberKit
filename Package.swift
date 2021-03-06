// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PhumberKit",
	platforms: [
//		SupportedPlatform.iOS(SupportedPlatform.IOSVersion.v13),
		.iOS(.v13),
	],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
		/*
		.library(
			name: "PhumberKit",
			targets: ["PhumberKit"]
		),
		.library(
			name: "PhumberKitDynamic",
			type: Product.Library.LibraryType.dynamic,
			targets: ["PhumberKit"]
		),
		*/
		.library(
			name: "PhumberKistatic",
			type: Product.Library.LibraryType.static,
			targets: ["PhumberKitarget"]
		),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
		.target(
			name: "PhumberKitarget",
			dependencies: [],
			path: "Sources/PhumberKit/",
			exclude: [],
			resources: [
				Resource.copy("Resources/PhoneNumberMetadata.json"),
			]
		),
/*
        .target(
            name: "PhumberKit",
            dependencies: [],
			resources: [
//				Resource.process("Resources/PhoneNumberMetadata.json"),
				Resource.copy("Resources/PhoneNumberMetadata.json"),
			]
		),
*/
        .testTarget(
            name: "PhumberKitests",
            dependencies: ["PhumberKitarget"],
			path: "Tests/PhumberKitTests/"
		)
    ]
)
