//
//  ECBActivityButton.h
//  eComBid
//
//  Created by Tony Kieu on 11/5/15.
//  Copyright © 2015 ECOMBID, INC. All rights reserved.
//

#import "ECBButton.h"

@interface ECBActivityButton : ECBButton

/*!
 @abstract Whether the `UIActivityIndicatorView` is loading.
 */
@property (nonatomic, assign, readonly) BOOL isLoading;

/*!
 @abstract `UIActivityIndicatorView` style, default is UIActivityIndicatorViewStyleWhite.
 */
@property (nonatomic, assign) UIActivityIndicatorViewStyle activityStyle;

/*!
 Hide the button text and show `UIActivityIndicatorView`.
 */
- (void)showActivity;

/*!
 Hide the `UIActivityIndicatorView` and show the button text.
 */
- (void)hideActivity;

@end
