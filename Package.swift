// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "FlexLayout",
  platforms: [.iOS("12.0")],
  products: [
    .library(
      name: "FlexLayout",
      targets: ["FlexLayout"]
    ),
  ],
  targets: [
    .binaryTarget(
      name: "FlexLayout",
      url: "",
      checksum: ""
    ),

    .target(name: "_FlexLayoutStub"),
  ]
)
