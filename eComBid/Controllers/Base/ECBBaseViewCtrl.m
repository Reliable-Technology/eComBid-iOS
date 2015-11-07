//
//  ECBBaseViewCtrl.m
//  eComBid
//
//  Created by Tony Kieu on 11/7/15.
//  Copyright © 2015 ECOMBID, INC. All rights reserved.
//

#import "ECBBaseViewCtrl.h"

@implementation ECBBaseViewCtrl

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

@end
