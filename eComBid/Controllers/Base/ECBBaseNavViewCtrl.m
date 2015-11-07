//
//  ECBBaseNavViewCtrl.m
//  eComBid
//
//  Created by Tony Kieu on 11/7/15.
//  Copyright © 2015 ECOMBID, INC. All rights reserved.
//

CGFloat const kECBBarButtonDefaultWidth   = 32.0f;
CGFloat const kECBBarButtonDefaultHeight  = 32.0f;

#import "ECBBaseNavViewCtrl.h"

@interface ECBBaseNavViewCtrl ()

@property (nonatomic, weak) id<ECBBaseNavDelegate> _delegate;
@property (nonatomic, strong) UIButton *_leftBtn;
@property (nonatomic, strong) UIButton *_rightBtn;

@end

@implementation ECBBaseNavViewCtrl

///--------------------------------------
#pragma mark - Init
///--------------------------------------

- (id)initWithCoder:(NSCoder *)aDecoder
           delegate:(nullable id<ECBBaseNavDelegate>)delegate
{
    if ((self = [super initWithCoder:aDecoder]))
    {
        __delegate = delegate;
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil
               bundle:(NSBundle *)nibBundleOrNil
             delegate:(nullable id<ECBBaseNavDelegate>)delegate
{
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]))
    {
        __delegate = delegate;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Left Bar button
    if ([self._delegate respondsToSelector:@selector(customLeftBarButton)])
    {
        __leftBtn = [self._delegate customLeftBarButton];
        if (self._leftBtn)
        {
            [self._leftBtn addTarget:self action:@selector(_leftBarButtonTapped:)
                    forControlEvents:UIControlEventTouchUpInside];
            self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:self._leftBtn];
        }
    }
    
    // Right Bar Button
    if ([self._delegate respondsToSelector:@selector(customRightBarButton)])
    {
        __rightBtn = [self._delegate customRightBarButton];
        if (self._rightBtn)
        {
            [self._rightBtn addTarget:self action:@selector(_rightBarButtonTapped:)
                     forControlEvents:UIControlEventTouchUpInside];
            self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:self._rightBtn];
        }
    }
}

///--------------------------------------
#pragma mark - Events
///--------------------------------------

- (void)_leftBarButtonTapped:(id)sender
{
    if ([self._delegate respondsToSelector:@selector(respondToLeftButtonTapEvent:)])
    {
        [self._delegate respondToLeftButtonTapEvent:sender];
    }
}

- (void)_rightBarButtonTapped:(id)sender
{
    if ([self._delegate respondsToSelector:@selector(respondToRightButtonTapEvent:)])
    {
        [self._delegate respondToRightButtonTapEvent:sender];
    }
}

///--------------------------------------
#pragma mark - Updates
///--------------------------------------

- (void)updateLeftBarButtonTitle:(NSString *)text
{
    [self._leftBtn setTitle:text forState:UIControlStateNormal];
}

- (void)updateLeftBarButtonImage:(UIImage *)image
{
    [self._leftBtn setBackgroundImage:image forState:UIControlStateNormal];
}

- (void)updateRightBarButtonTitle:(NSString *)text
{
    [self._rightBtn setTitle:text forState:UIControlStateNormal];
}

- (void)updateRightBarButtonImage:(UIImage *)image
{
    [self._rightBtn setImage:image forState:UIControlStateNormal];
}

@end
