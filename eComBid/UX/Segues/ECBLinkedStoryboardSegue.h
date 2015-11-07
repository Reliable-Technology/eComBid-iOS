//
//  ECBLinkedStoryboardSegue.h
//  eComBid
//
//  Created by Tony Kieu on 11/6/15.
//  Copyright © 2015 ECOMBID, INC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ECBLinkedStoryboardSegue : UIStoryboardSegue

/*!
 Get the `UIViewController` that is the designated initializer
 of the storyboard
 
 @param identifier A component string which separated by character `@`.
                   The first component is the storyboard name,
                   The second component is the view controller identifier
 
 @return A new instance of `UIViewController`
 */
+ (UIViewController *)sceneNamed:(NSString *)identifier;

@end
