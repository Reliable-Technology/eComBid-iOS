//
//  ECBProfileViewCtrl.m
//  eComBid
//
//  Created by Tony Kieu on 11/6/15.
//  Copyright © 2015 ECOMBID, INC. All rights reserved.
//

#import "ECBProfileViewCtrl.h"

@interface ECBProfileViewCtrl ()
{
    BOOL _didAppear;
}

@end

///--------------------------------------
#pragma mark - Init
///--------------------------------------

@implementation ECBProfileViewCtrl

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = ECBLOCALIZABLE(@"profile");
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    if (!_didAppear)
    {
        [self.navigationController performSegueWithIdentifier:kLinkAuthentication sender:self];
        _didAppear = YES;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:kLinkAuthentication])
    {
        ECBLogInfo(ECBLoggingTagCommon, @"Segue Id: %@ - Destination: %@",
                   segue.identifier, segue.destinationViewController);
        segue.destinationViewController.transitioningDelegate = self.transitionManager;
    }
}

- (void)dealloc
{
    ECBLogTraceHere;
}

@end
