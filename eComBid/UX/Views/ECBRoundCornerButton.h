//
//  ECBRoundCornerButton.h
//  eComBid
//
//  Created by Tony Kieu on 11/5/15.
//  Copyright © 2015 ECOMBID, INC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ECBRoundCornerButton : UIButton

/*!
 @abstract Whether the `UIActivityIndicatorView` is loading.
 */
@property (nonatomic, assign, readonly) BOOL isLoading;

/*!
 @abstract `UIActivityIndicatorView` style, default is UIActivityIndicatorViewStyleWhite.
 */
@property (nonatomic, assign) UIActivityIndicatorViewStyle activityStyle;

/*!
 Creates a new `ECBRoundCornerButton` with round corner radius of 3.0 and
 `UIActivityIndicatorView` with style UIActivityIndicatorViewStyleWhite.
 
 @returns A new `ECBRoundCornerButton`
 */
+ (instancetype)button;

/*!
 Hide the button text and show `UIActivityIndicatorView`.
 */
- (void)showActivity;

/*!
 Hide the `UIActivityIndicatorView` and show the button text.
 */
- (void)hideActivity;

@end
