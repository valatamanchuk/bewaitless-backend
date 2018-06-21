// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "bewaitless-backend",
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),
        
        // MySQL
        .package(url: "https://github.com/vapor/fluent-mysql.git", from: "3.0.0-rc")
    ],
    targets: [
        .target(name: "App", dependencies: ["Vapor", "FluentMySQL"git ]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)

