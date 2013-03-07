//
//  HappinessViewController.m
//  Happiness
//
//  Created by Jaimin Patel on 3/7/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "HappinessViewController.h"
#import "FaceView.h"

@interface HappinessViewController()
@property (nonatomic, weak) IBOutlet FaceView *faceView;
@end

@implementation HappinessViewController

@synthesize happiness = _happiness;
@synthesize faceView = _faceView;

- (void) setHappiness:(int)happiness
{
    _happiness = happiness;
    [self.faceView setNeedsDisplay]; //Never try DrawRect directly. Whenver happiness changes, redraw
}

- (void)setFaceView:(FaceView *)faceView{
    _faceView = faceView;
    [self.faceView addGestureRecognizer:[[UIPinchGestureRecognizer alloc] initWithTarget:self.faceView action:@selector(pinch:)]];
}

- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation{
    return YES;
}

@end
