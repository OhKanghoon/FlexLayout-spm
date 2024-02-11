// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

#if compiler(>=5.9)
/// A precompiled xcframework that was compiled with Xcode 15.2 / Swift 5.9.
let flexLayoutXCFramework = Target.binaryTarget(
  name: "FlexLayout",
  url: "https://github.com/OhKanghoon/FlexLayout-spm/releases/download/2.0.05/FlexLayout-Xcode-15.2.xcframework.zip",
  checksum: "58e06a6fc5b1f9d55b36015235c045143993accffcfe53839f3a6098dcc1b29e"
)
#else
/// A precompiled xcframework that was compiled with Xcode 14.3.1 / Swift 5.8.1.
let flexLayoutXCFramework = Target.binaryTarget(
  name: "FlexLayout",
  url: "https://github.com/OhKanghoon/FlexLayout-spm/releases/download/2.0.05/FlexLayout-Xcode-14.3.1.xcframework.zip",
  checksum: "39764948c85f5d061f2508c965d3f55d8804e11b0d5dbf9d2d4266838730f1b2"
)
#endif

let package = Package(
  name: "FlexLayout",
  products: [
    .library(
      name: "FlexLayout",
      targets: [
        "FlexLayout",
        "_FlexLayoutStub",
      ]
    ),
  ],
  targets: [
    flexLayoutXCFramework,
    .target(
      name: "_FlexLayoutStub"
    ),
    .testTarget(
      name: "FlexLayoutTests",
      dependencies: ["FlexLayout"]
    ),
  ]
)
