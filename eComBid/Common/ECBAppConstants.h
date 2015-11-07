//
//  ECBAppConstants.h
//  eComBid
//
//  Created by Tony Kieu on 11/6/15.
//  Copyright © 2015 ECOMBID, INC. All rights reserved.
//

#import <Foundation/Foundation.h>

///--------------------------------------
/// @name Common Macros
///--------------------------------------

#define ECBLOCALIZABLE(str) NSLocalizedString(str, @"")

///--------------------------------------
/// @name Storyboards
///--------------------------------------

extern NSString * const kMainStoryboardId;
extern NSString * const kAuthenticationStoryboardId;
extern NSString * const kLinkAuthentication;

///--------------------------------------
/// @name Segues
///--------------------------------------

extern NSString * const kSegueLogin;
extern NSString * const kSegueSignUp;
