//
//  ECBAppColor.h
//  eComBid
//
//  Created by Tony Kieu on 11/6/15.
//  Copyright © 2015 ECOMBID, INC. All rights reserved.
//

#import "ECBAppColorScheme.h"

@interface ECBAppColor : NSObject

///--------------------------------------
/// @name UINavigationBar
///--------------------------------------

+ (UIColor *)navigationBarBackgroundColor;
+ (UIColor *)navigationBarTintColor;
+ (UIColor *)navigationBarTextColor;
+ (UIColor *)navigationBarDisabledColor;
+ (UIColor *)navigationBarPageIndicatorColor;
+ (UIColor *)navigationBarPageHairLineColor;

///--------------------------------------
/// @name UITabBar
///--------------------------------------

+ (UIColor *)tabBarBackgroundColor;
+ (UIColor *)tabBarTintColor;
+ (UIColor *)tabBarItemUnSelectedTitleColor;
+ (UIColor *)tabBarItemSelectedTitleColor;
+ (UIColor *)tabBarImageSelectedColor;

///--------------------------------------
/// @name UIButton
///--------------------------------------

+ (UIColor *)buttonDeleteTintColor;
+ (UIColor *)buttonTintColor;
+ (UIColor *)buttonDisabledTintColor;
+ (UIColor *)buttonTitleColor;

@end
