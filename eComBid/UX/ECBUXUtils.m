//
//  ECBUXUtils.m
//  eComBid
//
//  Created by Tony Kieu on 11/7/15.
//  Copyright © 2015 ECOMBID, INC. All rights reserved.
//

#import "ECBUXUtils.h"
#import "ECBAppColorScheme.h"

@implementation ECBUXUtils

+ (void)dropShadow:(UIView *)view
     shadowOpacity:(CGFloat)shadowOpacity
      shadowRadius:(CGFloat)shadowRadius
            offset:(CGSize)shadowOffset
{
    view.layer.masksToBounds = NO;
    view.layer.rasterizationScale = [UIScreen mainScreen].scale;
    view.layer.shouldRasterize = YES;
    view.layer.shadowColor = [UIColor blackColor].CGColor;
    view.layer.shadowOffset = shadowOffset;
    view.layer.shadowRadius = shadowRadius;
    view.layer.shadowOpacity = shadowOpacity;
}

@end
