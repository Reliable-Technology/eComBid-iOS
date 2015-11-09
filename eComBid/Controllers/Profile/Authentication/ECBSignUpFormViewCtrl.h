//
//  ECBSignUpFormViewCtrl.h
//  eComBid
//
//  Created by Tony Kieu on 11/9/15.
//  Copyright © 2015 ECOMBID, INC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ECBAppProtocols.h"

@interface ECBSignUpFormViewCtrl : UITableViewController

@property (nonatomic, weak) id<ECBFormProtocol> formProtocol;

@property (nonatomic, readonly) NSString *firstName;
@property (nonatomic, readonly) NSString *lastName;
@property (nonatomic, readonly) NSString *email;
@property (nonatomic, readonly) NSString *password;

@end
