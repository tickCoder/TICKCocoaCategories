//
//  UIView+TICKEaseInOut.m
//  TICKCocoaCategories
//
//  Created by Claris on 2016.09.10.
//  Copyright © 2016 Claris. All rights reserved.
//

#import "UIView+TICKEaseInOut.h"

@implementation UIView (TICKEaseInOut)

- (void)tick_addSubviewEaseInOut:(UIView *)aView completion:(void (^)(void))aCompletion {
    aView.alpha = 0;
    [self addSubview:aView];
    
    NSMutableArray *values = [NSMutableArray array];
    [values addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(0.2, 0.2, 1.0)]];
    [values addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(1.0, 1.0, 1.0)]];
    
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    animation.duration = 0.3;
    //animation.delegate = self;
    animation.removedOnCompletion = true;
    animation.fillMode = kCAFillModeForwards;
    animation.values = values;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:@"easeInEaseOut"];
    [aView.layer addAnimation:animation forKey:nil];
    
    [UIView animateWithDuration:0.5 animations:^{
        aView.alpha = 1.0;
        [UIView commitAnimations];
    } completion:^(BOOL finished) {
        if (aCompletion) aCompletion();
    }];
    
//    [UIView beginAnimations:nil context:NULL];
//    [UIView setAnimationDuration:0.5];
//    [aView setAlpha:1.0];
//    [UIView commitAnimations];
}

- (void)tick_removeSubviewEaseInOut:(UIView *)aView completion:(void (^)(void))aCompletion {
    NSMutableArray *values = [NSMutableArray array];
    [values addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(1.0, 1.0, 1.0)]];
    [values addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(0.2, 0.2, 1.0)]];
    
    CAKeyframeAnimation * animation = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    animation.duration = 0.5;
    //animation.delegate = self;
    animation.removedOnCompletion = YES;
    animation.fillMode = kCAFillModeForwards;
    animation.values = values;
    animation.timingFunction = [CAMediaTimingFunction functionWithName: @"easeInEaseOut"];
    [self.layer addAnimation:animation forKey:nil];
    
    [UIView animateWithDuration:0.5 animations:^{
        aView.alpha = 0;
        [UIView commitAnimations];
    } completion:^(BOOL finished) {
        [aView removeFromSuperview];
        if (aCompletion) aCompletion();
    }];
}

@end
