//
//  ECBBaseNavViewCtrl.h
//  eComBid
//
//  Created by Tony Kieu on 11/7/15.
//  Copyright © 2015 ECOMBID, INC. All rights reserved.
//

#import "ECBBaseViewCtrl.h"

extern CGFloat const kECBBarButtonDefaultWidth;
extern CGFloat const kECBBarButtonDefaultHeight;

NS_ASSUME_NONNULL_BEGIN

@protocol ECBBaseNavDelegate <NSObject>

@optional
- (nullable UIButton *)customLeftBarButton;
- (nullable UIButton *)customRightBarButton;
- (void)respondToLeftButtonTapEvent:(nonnull id)sender;
- (void)respondToRightButtonTapEvent:(nonnull id)sender;

@end

@interface ECBBaseNavViewCtrl : ECBBaseViewCtrl

- (id)initWithCoder:(NSCoder *)aDecoder
           delegate:(nullable id<ECBBaseNavDelegate>)delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil
               bundle:(NSBundle *)nibBundleOrNil
             delegate:(nullable id<ECBBaseNavDelegate>)delegate;

- (void)updateLeftBarButtonTitle:(NSString *)text;
- (void)updateLeftBarButtonImage:(UIImage *)image;
- (void)updateRightBarButtonTitle:(NSString *)text;
- (void)updateRightBarButtonImage:(UIImage *)image;

@end

NS_ASSUME_NONNULL_END
