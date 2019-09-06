# AJMessage

[![Language](https://img.shields.io/badge/Swift-4.2-orange.svg)]()
[![CI Status](https://img.shields.io/travis/ajijoyo/AJMessage.svg?style=flat)](https://travis-ci.org/ajijoyo/AJMessage)
[![Version](https://img.shields.io/cocoapods/v/AJMessage.svg?style=flat)](https://cocoapods.org/pods/AJMessage)
[![License](https://img.shields.io/cocoapods/l/AJMessage.svg?style=flat)](https://cocoapods.org/pods/AJMessage)
[![Platform](https://img.shields.io/cocoapods/p/AJMessage.svg?style=flat)](https://cocoapods.org/pods/AJMessage)

## Example

![demo](https://github.com/ajijoyo/AJMessage/blob/master/Demo/demo.gif)

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

```
XCode 10.2
Swift 5
```

## Installation

AJMessage is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'AJMessage'
```


## Changelog

- separated function show with initial view :

```swift
AJMessage(title: title, message: msg).show()

//or
let asd = AJMessage(title: title, message: msg)
asd.show()

```
- function callback  `onHide` has deprecated and changed to `onDismiss`  and have value `AJMessage` class 
- add new configuration of backgroundcolor  `setBackgroundColor` for each status
- add new configuratoin of icon `setImage` for each status

## Used

Simple used
```swift
AJMessage.show(title: "This is title", message: "message for description",position:.top).onHide {
print("did dissmiss")
}
```
Can use NSAttributeString
```swift
let title = NSAttributedString(string: "Title", attributes: [.font:UIFont.systemFont(ofSize: 15)])
let msg = NSMutableAttributedString(string: "aasdasd", attributes: [.font:UIFont.systemFont(ofSize: 14)])
let attach = NSTextAttachment()
attach.image = UIImage(named:"plus")
msg.append(NSAttributedString(attachment: attach))
msg.append(NSAttributedString(string: "asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasd"))
        
AJMessage.show(title: title, message: msg,position:.top).onHide {
print("did dissmiss")
}
```

customize config

for spesific view present
```swift
var config = AJMessageConfig()

/**
config.titleFont 
config.setBackgroundColor(.cyan, status: .success)
config.setImage(UIImage(named:"warning"), status: .info)
*/

AJMessage.show(title: "This is title", message: "message for description", config: config)
```

for global view present
just set `AJMessageConfig.shared` on `didFinishLaunchingWithOptions` 
```swift
var config = AJMessageConfig.shared
/**
config.titleFont 
config.setBackgroundColor(.cyan, status: .success)
config.setImage(UIImage(named:"warning"), status: .info)
*/
```



## Author

ajijoyo, self.ajiejoy@gmail.com

## License

AJMessage is available under the MIT license. See the LICENSE file for more info.
