# RxOrientation

[![CI Status](https://img.shields.io/travis/lm2343635/RxOrientation.svg?style=flat)](https://travis-ci.org/lm2343635/RxOrientation)
[![Version](https://img.shields.io/cocoapods/v/RxOrientation.svg?style=flat)](https://cocoapods.org/pods/RxOrientation)
[![License](https://img.shields.io/cocoapods/l/RxOrientation.svg?style=flat)](https://cocoapods.org/pods/RxOrientation)
[![Platform](https://img.shields.io/cocoapods/p/RxOrientation.svg?style=flat)](https://cocoapods.org/pods/RxOrientation)

RxOrientation is a screen orientation notification extension for RxSwift, which transforms the state of screen orientation notifications into RxSwift Observables.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

RxOrientation is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'RxOrientation'
```

In your view model class or view controller class, using `UIDevice.current.rx.orientation` to get the current device orientaion and `UIApplication.shared.rx.statusBarOrientation` to get the status bar orientaion.

```Swift
UIApplication.shared.rx.statusBarOrientation.subscribe(onNext: { orientaion in
	// ...
}).disposed(by: disposeBag)
```

## Author

lm2343635, lm2343635@126.com

## License

RxOrientation is available under the MIT license. See the LICENSE file for more info.
