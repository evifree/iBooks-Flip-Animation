//
//  iBookAnimationAppDelegate.h
//  iBookAnimation
//
//  Created by Devin Doty on 12/31/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class iBookAnimationViewController;

@interface iBookAnimationAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    iBookAnimationViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet iBookAnimationViewController *viewController;

@end

