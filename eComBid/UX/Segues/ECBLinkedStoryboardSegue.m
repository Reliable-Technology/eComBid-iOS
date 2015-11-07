//
//  ECBLinkedStoryboardSegue.m
//  eComBid
//
//  Created by Tony Kieu on 11/6/15.
//  Copyright © 2015 ECOMBID, INC. All rights reserved.
//

#import "ECBLinkedStoryboardSegue.h"

@implementation ECBLinkedStoryboardSegue

///--------------------------------------
#pragma mark - Class
///--------------------------------------

+ (UIViewController *)sceneNamed:(NSString *)identifier
{
    NSArray *info = [identifier componentsSeparatedByString:@"@"];
    
    NSString *sceneId = info[0];
    NSString *storyboardName = info[1];
    
    ECBLogInfo(ECBLoggingTagCommon, @"Scene Id: %@", [ECBUtils isNotEmptyString:sceneId]
               ? sceneId : @"Not provided, use the initial view controller");
    ECBLogInfo(ECBLoggingTagCommon, @"Storyboard Name: %@", storyboardName);
    
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:storyboardName
                                                         bundle:nil];
    UIViewController *scene = nil;
    
    if (sceneId.length == 0)
    {
        scene = [storyBoard instantiateInitialViewController];
    }
    else
    {
        scene = [storyBoard instantiateViewControllerWithIdentifier:sceneId];
    }
    
    return scene;
}

///--------------------------------------
#pragma mark - Init
///--------------------------------------

- (id)initWithIdentifier:(NSString *)identifier
                  source:(UIViewController *)source
             destination:(UIViewController *)destination
{
    return [super initWithIdentifier:identifier
                              source:source
                         destination:[ECBLinkedStoryboardSegue sceneNamed:identifier]];
}

- (void)perform
{
    // TODO: (tkieu87) Determine whether the view should be pushed or presented.
    UIViewController *source = self.sourceViewController;
//    [source.navigationController pushViewController:self.destinationViewController animated:YES];
    [source presentViewController:self.destinationViewController animated:YES completion:nil];
}

@end
