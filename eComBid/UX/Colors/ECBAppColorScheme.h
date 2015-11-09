//
//  ECBAppColorScheme.h
//  eComBid
//
//  Created by Tony Kieu on 11/5/15.
//  Copyright © 2015 ECOMBID, INC. All rights reserved.
//

#import <Foundation/Foundation.h>

#define COLORSCHEME(name) { return [ECBAppColorScheme name]; }

#define RGBA(r,g,b,a) \
{ \
    static UIColor *rgb; \
    if (!rgb) rgb = [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]; \
        return rgb; \
}
#define RGB(r,g,b) RGBA(r,g,b,1.0)

@interface ECBAppColorScheme : NSObject

+ (UIColor *)blue;
+ (UIColor *)darkBlueColor;
+ (UIColor *)black;
+ (UIColor *)green;
+ (UIColor *)mint;
+ (UIColor *)darkMint;
+ (UIColor *)darkGray;
+ (UIColor *)lightGray;
+ (UIColor *)violet;
+ (UIColor *)red;
+ (UIColor *)pink;
+ (UIColor *)orange;
+ (UIColor *)yellow;
+ (UIColor *)white;
+ (UIColor *)systemWhite;
+ (UIColor *)clear;

@end
