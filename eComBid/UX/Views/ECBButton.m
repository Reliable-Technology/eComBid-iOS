//
//  ECBButton.m
//  eComBid
//
//  Created by Tony Kieu on 11/7/15.
//  Copyright © 2015 ECOMBID, INC. All rights reserved.
//

#import "ECBButton.h"
#import "ECBUXUtils.h"

@implementation ECBButton

///--------------------------------------
#pragma mark - Init
///--------------------------------------

+ (instancetype)button
{
    return [self buttonWithType:UIButtonTypeSystem];
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        [self customize];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self customize];
    }
    return self;
}

- (void)customize
{
    // Corner radius
    self.layer.cornerRadius = 3.f;
    self.clipsToBounds = YES;
}

///--------------------------------------
#pragma mark - Accessors
///--------------------------------------

- (void)setHasShadow:(BOOL)hasShadow
{
    _hasShadow = hasShadow;
    if (_hasShadow)
    {
        [ECBUXUtils dropShadow:self shadowOpacity:0.5f shadowRadius:1.0f offset:CGSizeZero];
    }
}

- (void)layoutIfNeeded
{
    ECBLogTraceHere;
}

@end
