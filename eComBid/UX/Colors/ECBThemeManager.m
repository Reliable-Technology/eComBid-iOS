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
    [[UINavigationBar appearance] setTranslucent:NO];
    [[UINavigationBar appearance] setBarStyle:UIBarStyleDefault];
    
    [[UINavigationBar appearance] setTitleTextAttributes:
     @{NSForegroundColorAttributeName:[ECBAppColor navigationBarTextColor],
       NSFontAttributeName:[ECBAppFont navigationBarTitleFont]}]; 
}

+ (void)_setTableViewTheme
{
    [UITableView appearance].sectionIndexColor = [ECBAppColor tableViewHeaderForegroundColor];
    [UITableView appearance].sectionIndexBackgroundColor = [ECBAppColor tableViewHeaderBackgroundColor];
    [UITableView appearance].backgroundColor = [ECBAppColor tableViewBackgroundColor];
    [UITableView appearance].separatorColor = [ECBAppColor tableViewSeparatorColor];
    [UITableView appearance].separatorInset = UIEdgeInsetsZero;
    [UITableView appearance].layoutMargins = UIEdgeInsetsZero;
    [UITableView appearance].separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    [UITableView appearance].indicatorStyle = UIScrollViewIndicatorStyleBlack;
    [UITableView appearance].tintColor = [ECBAppColor tableViewTintColor];
    [UITableViewHeaderFooterView appearance].tintColor = [ECBAppColor tableViewHeaderBackgroundColor];
}

+ (void)_setTableViewCellTheme
{
    [UITableViewCell appearance].backgroundColor = [ECBAppColor tableViewCellBackgroundColor];
    [UITableViewCell appearance].layoutMargins = UIEdgeInsetsZero;
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
