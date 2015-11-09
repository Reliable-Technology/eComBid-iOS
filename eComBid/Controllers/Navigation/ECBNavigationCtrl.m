//
//  ECBNavigationCtrl.m
//  eComBid
//
//  Created by Tony Kieu on 11/9/15.
//  Copyright © 2015 ECOMBID, INC. All rights reserved.
//

#import "ECBNavigationCtrl.h"

@interface ECBNavigationCtrl ()

@property (nonatomic, strong, readonly) TransitionManager *transitionManager;
@property (nonatomic, strong, readonly) TransitionZoom *transitionZoom;

@end

@implementation ECBNavigationCtrl

///--------------------------------------
#pragma mark - Init
///--------------------------------------

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if ((self = [super initWithCoder:aDecoder]))
    {
        [self initialize];
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]))
    {
        [self initialize];
    }
    return self;
}

- (void)initialize
{
    _transitionManager = [TransitionManager new];
    _transitionZoom = [TransitionZoom new];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ECBLogInfo(ECBLoggingTagCommon, @"Segue Id: %@ - Destination: %@",
               segue.identifier, segue.destinationViewController);
    segue.destinationViewController.transitioningDelegate = self.transitionManager;
}

@end
