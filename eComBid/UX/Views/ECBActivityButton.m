//
//  ECBActivityButton.m
//  eComBid
//
//  Created by Tony Kieu on 11/5/15.
//  Copyright © 2015 ECOMBID, INC. All rights reserved.
//

#import "ECBActivityButton.h"

@interface ECBActivityButton ()

@property (nonatomic, assign, readwrite) BOOL isLoading;
@property (nonatomic, strong) UIActivityIndicatorView *_activity;

@end

@implementation ECBActivityButton

- (void)customize
{
    [super customize];
    
    self.activityStyle = UIActivityIndicatorViewStyleWhite;
    _isLoading = NO;
    
    __activity = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:self.activityStyle];
    CGFloat height = self.bounds.size.height/2;
    CGFloat width = width = self.bounds.size.width/2;
    self._activity.center = CGPointMake(width , height);
    
    [self addSubview:self._activity];
}

///--------------------------------------
#pragma mark - Loading Status
///--------------------------------------

- (void)showActivity
{
    self.enabled = NO;
    self.isLoading = YES;
    self.titleLabel.layer.opacity = 0.0f;
    [self._activity startAnimating];
}

- (void)hideActivity
{
    self.enabled = YES;
    self.isLoading = NO;
    self.titleLabel.layer.opacity = 1.0f;
    [self._activity stopAnimating];
}

@end
