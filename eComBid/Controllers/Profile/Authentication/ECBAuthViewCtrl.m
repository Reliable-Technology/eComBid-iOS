//
//  ECBAuthViewCtrl.m
//  eComBid
//
//  Created by Tony Kieu on 11/6/15.
//  Copyright © 2015 ECOMBID, INC. All rights reserved.
//

#import "ECBAuthViewCtrl.h"
#import "ECBActivityButton.h"
#import "ECBUXUtils.h"

@interface ECBAuthViewCtrl ()

@property (weak, nonatomic) IBOutlet UILabel *_notificationLbl;
@property (weak, nonatomic) IBOutlet UIButton *_closeBtn;
@property (weak, nonatomic) IBOutlet ECBActivityButton *_signupBtn;
@property (weak, nonatomic) IBOutlet UIButton *_loginBtn;

@end

@implementation ECBAuthViewCtrl

///--------------------------------------
#pragma mark - Init
///--------------------------------------

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Localization
    self._notificationLbl.text = ECBLOCALIZABLE(@"signupnotification");
    [self._signupBtn setTitle:ECBLOCALIZABLE(@"signup") forState:UIControlStateNormal];
    [self._loginBtn setTitle:[ECBLOCALIZABLE(@"login") uppercaseString] forState:UIControlStateNormal];
    
    // Events
    [self._closeBtn addTarget:self action:@selector(_closeBtnTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self._signupBtn addTarget:self action:@selector(_signupBtnTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self._loginBtn addTarget:self action:@selector(_loginBtnTapped:) forControlEvents:UIControlEventTouchUpInside];
    
    // TODO: (tkieu87) Analytics
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    // Hide the navigation bar, so it can display the whole background image (if any)
    [self.navigationController setNavigationBarHidden:YES animated:NO];
}

- (void)dealloc
{
    ECBLogTraceHere;
    self._notificationLbl = nil;
    self._signupBtn = nil;
    self._loginBtn = nil;
}

///--------------------------------------
#pragma mark - Events
///--------------------------------------

- (void)_closeBtnTapped:(id)sender
{
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

- (void)_signupBtnTapped:(id)sender
{
    [self performSegueWithIdentifier:kSegueSignUp sender:self];
}

- (void)_loginBtnTapped:(id)sender
{
    [self performSegueWithIdentifier:kSegueLogin sender:self];
}

@end
