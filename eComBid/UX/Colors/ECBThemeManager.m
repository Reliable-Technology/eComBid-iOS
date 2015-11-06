//
//  ECBThemeManager.m
//  eComBid
//
//  Created by Tony Kieu on 11/6/15.
//  Copyright © 2015 ECOMBID, INC. All rights reserved.
//

#import "ECBThemeManager.h"

@implementation ECBThemeManager

///--------------------------------------
#pragma mark - Class
///--------------------------------------

+ (void)_setNavigationBarTheme
{
    // TODO: (tkieu87) Implement later
}

+ (void)_setTableViewTheme
{
    // TODO: (tkieu87) Implement later
}

+ (void)_setTableViewCellTheme
{
    // TODO: (tkieu87) Implement later
}

+ (void)_setTabBarTheme
{
    [UITabBar appearance].barTintColor = [ECBAppColor tabBarBackgroundColor];
    [UITabBar appearance].tintColor = [ECBAppColor tabBarTintColor];
    
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[ECBAppColor tabBarItemUnSelectedTitleColor],
                                                        NSFontAttributeName:[ECBAppFont tabBarTitleFont]}
                                             forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[ECBAppColor tabBarItemSelectedTitleColor],
                                                        NSFontAttributeName:[ECBAppFont tabBarTitleFont]}
                                             forState:UIControlStateSelected];
}

///--------------------------------------
#pragma mark - Public
///--------------------------------------

+ (void)setDefaultTheme
{
    [self _setNavigationBarTheme];
    [self _setTableViewTheme];
    [self _setTableViewCellTheme];
    [self _setTabBarTheme];
}

@end
