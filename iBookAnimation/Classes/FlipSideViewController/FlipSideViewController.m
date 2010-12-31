    //
//  FlipSideViewController.m
//  iBookAnimation
//
//  Created by Devin Doty on 12/31/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "FlipSideViewController.h"


@implementation FlipSideViewController

@synthesize delegate=_delegate;


- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.view.layer.contents = (id)[UIImage imageNamed:@"Flip_Side_Contents.png"].CGImage;

	UITapGestureRecognizer *gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(flip:)];
	[self.view addGestureRecognizer:gesture];
	[gesture release];
	
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


#pragma mark -
#pragma mark Gesture

- (void)flip:(UIGestureRecognizer*)gesture{
	
	if ([_delegate respondsToSelector:@selector(dismissFlipSideViewController:)]) {
		[self.delegate dismissFlipSideViewController:self];
	}
	
}


#pragma mark -
#pragma mark Memory Management

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload {
    [super viewDidUnload];
}

- (void)dealloc {
	_delegate=nil;
    [super dealloc];
}


@end
