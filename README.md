# SafePrintScreenSwift

SafePrintScreenSwift is a Swift library that allows you to block the screen capture functionality in an iOS app. By incorporating SafePrintScreenSwift into your project, you can prevent users from taking screenshots within your app, thus protecting sensitive information and private data. The library is easy to use and provides a simple and effective solution to enhance the security of your app.

# Features

- Block screen capture functionality within your iOS app
- Protect sensitive information and private data from being captured by users
- Easy to use and integrate with your existing project
- Works with both UIWindow and UIView

# Installation

# Cocoapods

To install SafePrintScreenSwift using CocoaPods, add the following line to your Podfile:

pod 'SafePrintScreenSwift'

Then, run the following command:

pod install

# Swift Package Manager

To install SafePrintScreenSwift using Swift Package Manager, add the following line to the dependencies array in your Package.swift file:

dependencies: [
    .package(url: "https://github.com/{YOUR_USERNAME}/SafePrintScreenSwift.git", from: "1.0.0")
]

Then, run the following command:

swift package update

# Manual Installation

Alternatively, you can install SafePrintScreenSwift manually by adding the SafePrintScreenSwift.xcodeproj file to your Xcode project. Then, add SafePrintScreenSwift.framework to the "Embedded Binaries" section of your target's "General" tab.

# Usage

Using SafePrintScreenSwift is easy! Simply import the framework into your file:

![Captura de Tela 2023-05-12 às 12 05 09](https://github.com/raphaeltorquat0/SafePrintScreenSwift/assets/89878688/d06d11e7-63ee-453b-bf0b-a64d2f6b5941)

Then, use the SafePrintScreenManager class to block screenshots for your desired UIWindow or UIView:

![Captura de Tela 2023-05-12 às 12 05 36](https://github.com/raphaeltorquat0/SafePrintScreenSwift/assets/89878688/ec6505e2-1f45-44c7-8429-cd4c3db57e3e)

To disable the SafePrintScreenSwift functionality for a specific UIWindow or UIView, use the disableSafePintScreenShot method:

![Captura de Tela 2023-05-12 às 12 07 09](https://github.com/raphaeltorquat0/SafePrintScreenSwift/assets/89878688/a334fffd-179a-4ade-a530-579c27330369)

To listen for screen recording events, use the listenerForScreenReports method:

![Captura de Tela 2023-05-12 às 12 06 16](https://github.com/raphaeltorquat0/SafePrintScreenSwift/assets/89878688/7f35da79-e76e-46a9-b595-87e478adc58d)

# Contributing

Contributions to SafePrintScreenSwift are welcome and encouraged! To contribute, please submit a pull request.

# License 

SafePrintScreenSwift is released under the MIT license. See LICENSE for details.

