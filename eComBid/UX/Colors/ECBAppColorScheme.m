//
//  ECBAppColorScheme.m
//  eComBid
//
//  Created by Tony Kieu on 11/5/15.
//  Copyright © 2015 ECOMBID, INC. All rights reserved.
//

#import "ECBAppColorScheme.h"
#import <ChameleonFramework/UIColor+Chameleon.h>

@implementation ECBAppColorScheme

+ (UIColor *)blue               { return [UIColor flatSkyBlueColor]; }
+ (UIColor *)darkBlueColor      { return [UIColor flatSkyBlueColorDark]; }
+ (UIColor *)black              { return [UIColor flatBlackColor]; }
+ (UIColor *)green              { return [UIColor flatGreenColorDark]; }
+ (UIColor *)mint               { return [UIColor flatMintColor]; }
+ (UIColor *)darkGray           { return [UIColor flatGrayColorDark]; }
+ (UIColor *)lightGray          { return [UIColor flatGrayColor]; }
+ (UIColor *)violet             { return [UIColor flatPurpleColorDark]; }
+ (UIColor *)red                { return [UIColor flatRedColor]; }
+ (UIColor *)pink               { return [UIColor flatPinkColor]; }
+ (UIColor *)orange             { return [UIColor flatOrangeColor]; }
+ (UIColor *)yellow             { return [UIColor flatYellowColor]; }
+ (UIColor *)white              { return [UIColor flatWhiteColor]; }
+ (UIColor *)clear              {return [ UIColor clearColor];}

@end
