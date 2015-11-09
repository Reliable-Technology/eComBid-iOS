//
//  ECBLoginViewCtrl.m
//  eComBid
//
//  Created by Tony Kieu on 11/5/15.
//  Copyright © 2015 ECOMBID, INC. All rights reserved.
//

#import "ECBLoginViewCtrl.h"
#import "ECBLoginFormViewCtrl.h"
#import "ECBActivityButton.h"
#import "ECBUXUtils.h"

@interface ECBLoginViewCtrl () <ECBBaseNavDelegate, ECBFormProtocol>

@property (weak, nonatomic) IBOutlet UIView *_containerView;
@property (weak, nonatomic) IBOutlet ECBActivityButton *_loginBtn;

@end

@implementation ECBLoginViewCtrl

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
    
    self.title = [ECBLOCALIZABLE(@"login") uppercaseString];
    
    [ECBUXUtils dropShadow:self._containerView shadowOpacity:0.5f shadowRadius:1.0f offset:CGSizeZero];
    
    [self._loginBtn setTitle:ECBLOCALIZABLE(@"login") forState:UIControlStateNormal];
    [self._loginBtn addTarget:self action:@selector(_loginBtnTapped:)
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
    if ([segue.identifier isEqualToString:kSegueLoginForm])
    {
        ECBLoginFormViewCtrl *formCtrl = (ECBLoginFormViewCtrl *)segue.destinationViewController;
        formCtrl.formProtocol = self;
    }
}

- (void)dealloc
{
    ECBLogTraceHere;
    self._containerView = nil;
    self._loginBtn = nil;
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

- (void)_loginBtnTapped:(id)sender
{
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

@end
