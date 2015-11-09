//
//  ECBSignUpViewCtrl.m
//  eComBid
//
//  Created by Tony Kieu on 11/5/15.
//  Copyright © 2015 ECOMBID, INC. All rights reserved.
//

#import "ECBSignUpViewCtrl.h"
#import "ECBSignUpFormViewCtrl.h"
#import "ECBActivityButton.h"
#import "ECBUXUtils.h"

@interface ECBSignUpViewCtrl () <ECBBaseNavDelegate, ECBFormProtocol>

@property (weak, nonatomic) IBOutlet UIView *_containerView;
@property (weak, nonatomic) IBOutlet ECBActivityButton *_signupBtn;

@end

@implementation ECBSignUpViewCtrl

///--------------------------------------
#pragma mark - Init
///--------------------------------------

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder delegate:self];
    if (self)
    {
        // Initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = [ECBLOCALIZABLE(@"signup") uppercaseString];
    
    [ECBUXUtils dropShadow:self._containerView shadowOpacity:0.5f shadowRadius:1.0f offset:CGSizeZero];
    
    [self._signupBtn setTitle:ECBLOCALIZABLE(@"signup") forState:UIControlStateNormal];
    [self._signupBtn addTarget:self action:@selector(_signupBtnTapped:)
              forControlEvents:UIControlEventTouchUpInside];
    
    // TODO: (tkieu87) Analytics
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:kSegueSignUpForm])
    {
        ECBSignUpFormViewCtrl *formCtrl = (ECBSignUpFormViewCtrl *)segue.destinationViewController;
        formCtrl.formProtocol = self;
    }
}

- (void)dealloc
{
    ECBLogTraceHere;
    self._containerView = nil;
    self._signupBtn = nil;
}

///--------------------------------------
#pragma mark - <ECBBaseNavDelegate>
///--------------------------------------

- (UIButton *)customLeftBarButton
{
    UIButton *backButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, kECBBarButtonDefaultWidth, kECBBarButtonDefaultHeight)];
    [backButton setImage:[UIImage imageNamed:@"icon-action-back"] forState:UIControlStateNormal];
    return backButton;
}

- (void)respondToLeftButtonTapEvent:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

///--------------------------------------
#pragma mark - Events
///--------------------------------------

- (void)isReadyToExecute
{
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

- (void)_signupBtnTapped:(id)sender
{
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

@end
