//
//  FaceView.h
//  Happiness
//
//  Created by Jaimin Patel on 3/7/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FaceView : UIView

@property (nonatomic) CGFloat scale;

- (void)pinch : (UIPinchGestureRecognizer *)gesture;

@end
