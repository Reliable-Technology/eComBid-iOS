//
//  ECBAppFont.h
//  eComBid
//
//  Created by Tony Kieu on 11/6/15.
//  Copyright © 2015 ECOMBID, INC. All rights reserved.
//

#import <Foundation/Foundation.h>

#define CUSTOMTYPEFACE(fontName, fontSize) { return [UIFont fontWithName:fontName size:fontSize]; }
#define TYPEFACE(fontSize, fontWeight) { return [UIFont systemFontOfSize:fontSize weight:fontWeight]; };

@interface ECBAppFont : NSObject

///--------------------------------------
/// @name UITabBar
///--------------------------------------

+ (UIFont *)tabBarTitleFont;

@end
