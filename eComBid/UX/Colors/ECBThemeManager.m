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
    [[UINavigationBar appearance] setBarTintColor:[ECBAppColor navigationBarBackgroundColor]];
    [[UINavigationBar appearance] setTintColor:[ECBAppColor navigationBarTintColor]];
    [[UINavigationBar appearance] setTranslucent:YES];
    [[UINavigationBar appearance] setBarStyle:UIBarStyleDefault];
    
    [[UINavigationBar appearance] setTitleTextAttributes:
     @{NSForegroundColorAttributeName:[ECBAppColor navigationBarTextColor],
       NSFontAttributeName:[ECBAppFont navigationBarTitleFont]}]; 
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
    [UITabBarItem appearance].titlePositionAdjustment = UIOffsetMake(0, -3);
    
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[ECBAppColor tabBarItemUnSelectedTitleColor],
                                                        NSFontAttributeName:[ECBAppFont tabBarTitleFont]}
                                             forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[ECBAppColor tabBarItemSelectedTitleColor],
                                                        NSFontAttributeName:[ECBAppFont tabBarTitleFont]}
                                             forState:UIControlStateSelected];
}

+ (void)_setToolBarTheme
{
    // TODO: (tkieu87) Implement later
}

+ (void)_setButtonTheme
{
    [UIButton appearance].layer.borderColor = [ECBAppColor buttonDisabledTintColor].CGColor;
    [UIButton appearance].layer.cornerRadius = 3.0f;
    // [UIButton appearance].clipsToBounds = YES;

    [UIButton appearance].tintColor = [ECBAppColor buttonTintColor];

    [[UIButton appearance].titleLabel setFont:[ECBAppFont buttonTitleFont]];
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
    [self _setToolBarTheme];
    [self _setButtonTheme];
}

@end
