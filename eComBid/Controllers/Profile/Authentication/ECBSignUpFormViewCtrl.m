//
//  ECBSignUpFormViewCtrl.m
//  eComBid
//
//  Created by Tony Kieu on 11/9/15.
//  Copyright © 2015 ECOMBID, INC. All rights reserved.
//

#import "ECBSignUpFormViewCtrl.h"
#import "ECBUXUtils.h"

@interface ECBSignUpFormViewCtrl () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *_firstnameTxtField;
@property (weak, nonatomic) IBOutlet UITextField *_lastnameTxtField;
@property (weak, nonatomic) IBOutlet UITextField *_emailTxtField;
@property (weak, nonatomic) IBOutlet UITextField *_passwordTxtField;

@end

@implementation ECBSignUpFormViewCtrl

///--------------------------------------
#pragma mark - Init
///--------------------------------------

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self._firstnameTxtField.delegate = self;
    self._lastnameTxtField.delegate = self;
    self._emailTxtField.delegate = self;
    self._passwordTxtField.delegate = self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self._firstnameTxtField.text = @"";
    self._lastnameTxtField.text = @"";
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
    if (textField == self._firstnameTxtField)
    {
        [self._lastnameTxtField becomeFirstResponder];
    }
    else if (textField == self._lastnameTxtField)
    {
        [self._emailTxtField becomeFirstResponder];
    }
    else if (textField == self._emailTxtField)
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

- (NSString *)firstName
{
    return self._firstnameTxtField.text;
}

- (NSString *)lastName
{
    return self._lastnameTxtField.text;
}

- (NSString *)email
{
    return self._emailTxtField.text;
}

- (NSString *)password
{
    return self._passwordTxtField.text;
}

@end
