# Darriens iOS demo
iOS demo app for Darriens. Implements SPOTX SDK.

Known issue: AdPlayer does not close after ad finished. It is a problem with SPOTXSDK, due to
the SDK relies on Objective-C, and this App relies on Swift language. It might not be a big problem to fix it,
maybe with one mail to SPOTX support team could be fixed. The worst case would be made a migration from swift to Objective C

### Usage

```
> git clone git@github.com:dafranco/darriens_ios_demo.git
> cd DarriensTwo
> pod install
> open SpotX-Demo.xcworkspace
```
