//
//  ECBUXUtils.h
//  eComBid
//
//  Created by Tony Kieu on 11/7/15.
//  Copyright © 2015 ECOMBID, INC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ECBUXUtils : NSObject

+ (UIColor *)lighterColorForColor:(UIColor *)color;
+ (UIColor *)darkerColorForColor:(UIColor *)color;

+ (void)dropShadow:(UIView *)view
     shadowOpacity:(CGFloat)shadowOpacity
      shadowRadius:(CGFloat)shadowRadius
            offset:(CGSize)shadowOffset;

@end
