
//
//  FlipSideViewController.h
//  iBookAnimation
//
//  Created by Devin Doty on 12/31/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol FlipSideDelegate;
@interface FlipSideViewController : UIViewController {
	
	id _delegate;
}

@property(nonatomic,retain) id <FlipSideDelegate> delegate;

@end

@protocol FlipSideDelegate
- (void)dismissFlipSideViewController:(FlipSideViewController*)controller;
@end

