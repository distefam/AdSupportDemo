### Abstract

This is a demo project to illustrate that the AdSupport Framework is automatically linked whenever classes referenced therein are explicitly called. Specifically, `[ASIdentifierManager class]`. If, however, these calls are replaced with anonymous classes by using `NSClassFromString()`, the AdSupport Framework is not automatically linked.

### Usage

In `SegmentioIntegration.m` you will find two test cases, marked in commented lines as _Test A_ and _Test B_ respectively. Test A is the default behavior in Segment.io and is uncommented by default. _Test B_ uses the aforementioned anonymous classes and should be uncommented (while commenting out the _Test A_ blocks).

### Git and CocoaPods

Because modifications to the source files of CocoaPods was necessary for this demo, do _not_ run `Pod Setup` or `Pod Install`. All necessary Pods are tracked in Git. 
