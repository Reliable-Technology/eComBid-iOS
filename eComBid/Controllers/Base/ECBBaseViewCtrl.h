//
//  ECBBaseViewCtrl.h
//  eComBid
//
//  Created by Tony Kieu on 11/7/15.
//  Copyright © 2015 ECOMBID, INC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ECBBaseViewCtrl : UIViewController

@property (nonatomic, strong, readonly) TransitionManager *transitionManager;
@property (nonatomic, strong, readonly) TransitionZoom *transitionZoom;

@end
