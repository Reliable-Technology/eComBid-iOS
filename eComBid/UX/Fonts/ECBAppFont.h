//
//  ECBAppFont.h
//  eComBid
//
//  Created by Tony Kieu on 11/6/15.
//  Copyright © 2015 ECOMBID, INC. All rights reserved.
//

#import <Foundation/Foundation.h>

#define CUSTOMTYPEFACE(fontName, fontSize) { return [UIFont fontWithName:fontName size:fontSize]; }
#define SYSTEMTYPEFACE(fontSize, fontWeight) { return [UIFont systemFontOfSize:fontSize weight:fontWeight]; }

extern NSString * const kECBDefaultFontRegularName;
extern NSString * const kECBDefaultFontLightName;
extern NSString * const kECBDefaultFontSemiBoldName;
extern CGFloat const kECBNavigationBarTitleFontSize;
extern CGFloat const kECBBarDefaultFontSize;
extern CGFloat const kECBLabelDefaultFontSize;
extern CGFloat const kECBButtonDefaultFontSize;

@interface ECBAppFont : NSObject

+ (UIFont *)navigationBarTitleFont;
+ (UIFont *)tabBarTitleFont;
+ (UIFont *)buttonTitleFont;

@end
