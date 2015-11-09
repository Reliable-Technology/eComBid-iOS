//
//  ECBLoginFormViewCtrl.m
//  eComBid
//
//  Created by Tony Kieu on 11/9/15.
//  Copyright © 2015 ECOMBID, INC. All rights reserved.
//

#import "ECBLoginFormViewCtrl.h"

@interface ECBLoginFormViewCtrl () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *_emailTxtField;
@property (weak, nonatomic) IBOutlet UITextField *_passwordTxtField;

@end

@implementation ECBLoginFormViewCtrl

///--------------------------------------
#pragma mark - Init
///--------------------------------------

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self._emailTxtField.delegate = self;
    self._passwordTxtField.delegate = self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self._emailTxtField.text = @"";
    self._passwordTxtField.text = @"";
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self.view endEditing:YES];
}

///--------------------------------------
#pragma mark - <UITextFieldDelegate>
///--------------------------------------

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField == self._emailTxtField)
    {
        [self._passwordTxtField becomeFirstResponder];
    }
    else
    {
        [textField resignFirstResponder];
        if ([self.formProtocol respondsToSelector:@selector(isReadyToExecute)])
            [self.formProtocol isReadyToExecute];
    }
    return YES;
}

///--------------------------------------
#pragma mark - Accessors
///--------------------------------------

- (NSString *)email
{
    return self._emailTxtField.text;
}

- (NSString *)password
{
    return self._passwordTxtField.text;
}

@end
