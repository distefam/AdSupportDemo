// SegmentioIntegration.h
// Copyright (c) 2014 Segment.io. All rights reserved.

/**
 *  If all Test A methods in the implementation file are uncommented, 
 *  then the AdSupport framework is linked and the label prints the
 *  advertising identifier.
 *
 *  If all Test B methods, which use anonymous classes, are uncommented,
 *  then the AdSupport framework is not linked.
 */

#import <Foundation/Foundation.h>
#import "SEGAnalyticsIntegration.h"

extern NSString *const SEGSegmentioDidSendRequestNotification;
extern NSString *const SEGSegmentioRequestDidSucceedNotification;
extern NSString *const SEGSegmentioRequestDidFailNotification;

@interface SEGSegmentioIntegration : SEGAnalyticsIntegration

@property (nonatomic, copy) NSString *anonymousId;
@property (nonatomic, copy) NSString *userId;
@property (nonatomic, strong) NSURL *apiURL;

- (void)flush;

@end
