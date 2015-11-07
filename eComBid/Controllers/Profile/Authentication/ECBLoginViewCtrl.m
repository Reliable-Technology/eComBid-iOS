//
//  ECBLoginViewCtrl.m
//  eComBid
//
//  Created by Tony Kieu on 11/5/15.
//  Copyright © 2015 ECOMBID, INC. All rights reserved.
//

#import "ECBLoginViewCtrl.h"

@interface ECBLoginViewCtrl () <ECBBaseNavDelegate>

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
    
    // TODO: (tkieu87) Analytics
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.navigationController.navigationBarHidden = NO;
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

@end
