//
//  ECBAppFont.m
//  eComBid
//
//  Created by Tony Kieu on 11/6/15.
//  Copyright © 2015 ECOMBID, INC. All rights reserved.
//

#import "ECBAppFont.h"

NSString * const kECBDefaultFontRegularName     = @"Lato-Regular";
NSString * const kECBDefaultFontLightName       = @"Lato-Light";
NSString * const kECBDefaultFontSemiBoldName    = @"Lato-Semibold";
NSString * const kECBDefaultFontBoldName        = @"Lato-Bold";
CGFloat const kECBNavigationBarTitleFontSize    = 17.0f;
CGFloat const kECBBarDefaultFontSize            = 10.0f;
CGFloat const kECBLabelDefaultFontSize          = 13.0f;
CGFloat const kECBButtonDefaultFontSize         = 13.0f;

@implementation ECBAppFont

+ (UIFont *)navigationBarTitleFont CUSTOMTYPEFACE(kECBDefaultFontBoldName, kECBNavigationBarTitleFontSize)
+ (UIFont *)tabBarTitleFont CUSTOMTYPEFACE(kECBDefaultFontSemiBoldName, kECBBarDefaultFontSize)
+ (UIFont *)buttonTitleFont CUSTOMTYPEFACE(kECBDefaultFontBoldName, kECBButtonDefaultFontSize)

@end
