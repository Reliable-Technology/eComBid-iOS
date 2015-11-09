//
//  ECBAppColor.m
//  eComBid
//
//  Created by Tony Kieu on 11/6/15.
//  Copyright © 2015 ECOMBID, INC. All rights reserved.
//

#import "ECBAppColor.h"

@implementation ECBAppColor

///--------------------------------------
#pragma mark - UINavigationBar
///--------------------------------------

+ (UIColor *)navigationBarBackgroundColor COLORSCHEME(white)
+ (UIColor *)navigationBarTintColor COLORSCHEME(mint)
+ (UIColor *)navigationBarTextColor COLORSCHEME(black)
+ (UIColor *)navigationBarDisabledColor COLORSCHEME(lightGray)
+ (UIColor *)navigationBarPageIndicatorColor COLORSCHEME(darkGray)
+ (UIColor *)navigationBarPageHairLineColor COLORSCHEME(darkGray)

///--------------------------------------
#pragma mark - UITableView
///--------------------------------------

+ (UIColor *)tableViewBackgroundColor COLORSCHEME(systemWhite)
+ (UIColor *)tableViewTintColor COLORSCHEME(green)
+ (UIColor *)tableViewHeaderBackgroundColor COLORSCHEME(green)
+ (UIColor *)tableViewHeaderForegroundColor COLORSCHEME(white)
+ (UIColor *)tableViewGroupedHeaderAndFooterForegroundColor COLORSCHEME(lightGray)
+ (UIColor *)tableViewGroupedHeaderAndFooterBackgroundColor COLORSCHEME(green)
+ (UIColor *)tableViewCellBackgroundColor COLORSCHEME(clear)
+ (UIColor *)tableViewCellDetailsColor COLORSCHEME(lightGray)
+ (UIColor *)tableViewSelectedCellBackgroundColor COLORSCHEME(lightGray)
+ (UIColor *)tableViewSeparatorColor COLORSCHEME(lightGray)
+ (UIColor *)tableViewSectionIndexColor COLORSCHEME(darkGray)
+ (UIColor *)tableViewSectionIndexBackgroundColor COLORSCHEME(clear)
+ (UIColor *)tableViewSectionIndexTrackingBackgroundColor COLORSCHEME(lightGray)

///--------------------------------------
#pragma mark - UITabBar
///--------------------------------------

+ (UIColor *)tabBarBackgroundColor COLORSCHEME(white)
+ (UIColor *)tabBarTintColor COLORSCHEME(mint)
+ (UIColor *)tabBarItemUnSelectedTitleColor COLORSCHEME(lightGray)
+ (UIColor *)tabBarItemSelectedTitleColor COLORSCHEME(mint)
+ (UIColor *)tabBarImageSelectedColor COLORSCHEME(mint)

///--------------------------------------
#pragma mark - UIButton
///--------------------------------------

+ (UIColor *)buttonDeleteTintColor COLORSCHEME(red)
+ (UIColor *)buttonTintColor COLORSCHEME(green)
+ (UIColor *)buttonDisabledTintColor COLORSCHEME(lightGray)
+ (UIColor *)buttonTitleColor COLORSCHEME(white)

@end
