### Abstract

This is a demo project to illustrate that the AdSupport Framework is automatically linked whenever classes referenced therein are explicitly called. Specifically, `[ASIdentifierManager class]`. If, however, these calls are replaced with anonymous classes by using `NSClassFromString()`, the AdSupport Framework is not automatically linked.

### Usage

Direct class access will be used by default. To use obfuscated class access, change line 19 in SegmentioIntegration.m to have a value of 1 rather than 0. 

### Git and CocoaPods

Because modifications to the source files of CocoaPods was necessary for this demo, do _not_ run `Pod Setup` or `Pod Install`. All necessary Pods are tracked in Git. 
