// swift-tools-version: 5.9
import PackageDescription

let package = Package(
  name: "material-components-ios",
  defaultLocalization: "en",
  platforms: [
    .iOS(.v13)
  ],
  products: [
    // This is what your app imports:
    .library(name: "material", targets: ["material"]),

    // Optional: expose the raw module too:
    .library(name: "MaterialComponents", targets: ["MaterialComponents"]),
  ],
  dependencies: [
    // Add deps here later if you decide to pull them in as SwiftPM deps
  ],
  targets: [
    .target(
      name: "MaterialComponents",
      path: ".",
      sources: [
        "components/Buttons/src",
        "components/TextFields/src",
        "components/Themes/src",
        "components/Typography/src",
        "components/TextControls/src"
      ],
      publicHeadersPath: "spm/include",
      cSettings: [
        // So the umbrella header can import "components/..." paths:
        .headerSearchPath("."),
        .headerSearchPath("components"),
      ],
      linkerSettings: [
        .linkedFramework("UIKit"),
        .linkedFramework("QuartzCore"),
        .linkedFramework("CoreGraphics"),
      ]
    ),

    .target(
      name: "material",
      dependencies: ["MaterialComponents"],
      path: "Sources/material"
    ),
  ]
)
