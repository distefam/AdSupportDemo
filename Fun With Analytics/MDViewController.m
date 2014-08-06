//
//  MDViewController.m
//  Fun With Analytics
//
//  Created by Michael Distefano on 8/5/14.
//  Copyright (c) 2014 Michael Distefano. All rights reserved.
//

#import "MDViewController.h"

@interface MDViewController ()
@property (weak, nonatomic) IBOutlet UILabel *advertisingIdentifierLabel;
@property (weak, nonatomic) IBOutlet UILabel *advertisingStatusLabel;
@end

@implementation MDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    Class advertisingClass = NSClassFromString(@"ASIdentifierManager");
    if (advertisingClass) {
        SEL sharedManagerSelector = NSSelectorFromString(@"sharedManager");
        SEL adIdSelector = NSSelectorFromString(@"advertisingIdentifier");
        SEL udidSelector = NSSelectorFromString(@"UUIDString");
        NSString *advertisingIdentifier = [[[advertisingClass performSelector:sharedManagerSelector] performSelector:adIdSelector] performSelector:udidSelector];
        self.advertisingIdentifierLabel.adjustsFontSizeToFitWidth = YES;
        self.advertisingIdentifierLabel.text = [NSString stringWithFormat:@"idfa: %@", advertisingIdentifier];
    }
    
    self.advertisingStatusLabel.text = advertisingClass ? @"Advertising Class Found" : @"Advertising Class Not Found";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
