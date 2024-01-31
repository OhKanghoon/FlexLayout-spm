// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "FlexLayout",
  products: [
    .library(
      name: "FlexLayout",
      targets: ["FlexLayout"]
    ),
  ],
  targets: [
    .target(
      name: "_FlexLayoutStub"
    ),
    .testTarget(
      name: "FlexLayoutTests",
      dependencies: ["FlexLayout"]
    ),
  ]
)
