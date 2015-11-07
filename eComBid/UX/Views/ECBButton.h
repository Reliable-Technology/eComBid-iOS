//
//  ECBButton.h
//  eComBid
//
//  Created by Tony Kieu on 11/7/15.
//  Copyright © 2015 ECOMBID, INC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ECBButton : UIButton

/*!
 Creates a new `ECBButton` with round corner radius of 3.0 and
 `UIActivityIndicatorView` with style UIActivityIndicatorViewStyleWhite.
 
 @returns A new `ECBButton`
 */
+ (instancetype)button;

/*!
 @abstract Whether to drop shadow on the button.
 */
@property (nonatomic, assign) BOOL hasShadow;

/*!
 Customize the button
 */
- (void)customize;

@end
