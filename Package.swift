// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "Transit",
  platforms: [
    .iOS(.v13)
  ],
  products: [
    .library(
      name: "Transit",
      targets: [
        "Transit"
      ]
    )
  ],
  targets: [
    .target(
      name: "Transit",
      resources: [
        .process("Resources")
      ]
    ),
    .testTarget(
      name: "TransitTests",
      dependencies: [
        "Transit"
      ],
      resources: [
        .process("Resources")
      ]
    )
  ]
)
