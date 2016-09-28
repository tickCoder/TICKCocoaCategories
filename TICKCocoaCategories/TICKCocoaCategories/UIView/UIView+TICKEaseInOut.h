//
//  UIView+TICKEaseInOut.h
//  TICKCocoaCategories
//
//  Created by Claris on 2016.09.10.
//  Copyright © 2016 Claris. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (TICKEaseInOut)
- (void)tick_addSubviewEaseInOut:(UIView *)aView completion:(void(^)(void))aCompletion;
- (void)tick_removeFromSuperviewCompletion:(void(^)(void))aCompletion;

////TODO: 通用动画
//- (void)tick_addSubview:(UIView *)aView animation:(ANIMATION)aAnimation completion:(void(^)(void))aCompletion;
@end
