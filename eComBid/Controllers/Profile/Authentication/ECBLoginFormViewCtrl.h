//
//  ECBLoginFormViewCtrl.h
//  eComBid
//
//  Created by Tony Kieu on 11/9/15.
//  Copyright © 2015 ECOMBID, INC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ECBAppProtocols.h"

@interface ECBLoginFormViewCtrl : UITableViewController

@property (nonatomic, weak) id<ECBFormProtocol> formProtocol;

@property (nonatomic, readonly) NSString *email;
@property (nonatomic, readonly) NSString *password;

@end
