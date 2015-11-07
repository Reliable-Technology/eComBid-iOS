//
//  ECBAppFont.m
//  eComBid
//
//  Created by Tony Kieu on 11/6/15.
//  Copyright © 2015 ECOMBID, INC. All rights reserved.
//

#import "ECBAppFont.h"

NSString * const kECBDefaultFontRegularName  = @"Montserrat-Regular";
NSString * const kECBDefaultFontLightName    = @"Montserrat-Light";
NSString * const kECBDefaultFontSemiBoldName = @"Montserrat-SemiBold";
CGFloat const kECBNavigationBarTitleFontSize = 16.0f;
CGFloat const kECBBarDefaultFontSize         = 10.0f;
CGFloat const kECBLabelDefaultFontSize       = 13.0f;
CGFloat const kECBButtonDefaultFontSize      = 13.0f;

@implementation ECBAppFont

+ (UIFont *)navigationBarTitleFont CUSTOMTYPEFACE(kECBDefaultFontRegularName, kECBNavigationBarTitleFontSize)
+ (UIFont *)tabBarTitleFont CUSTOMTYPEFACE(kECBDefaultFontLightName, kECBBarDefaultFontSize)
+ (UIFont *)buttonTitleFont CUSTOMTYPEFACE(kECBDefaultFontRegularName, kECBButtonDefaultFontSize)

@end
