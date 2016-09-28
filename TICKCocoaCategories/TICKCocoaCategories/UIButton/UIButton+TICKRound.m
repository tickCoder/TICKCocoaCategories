//
//  UIButton+TICKRound.m
//  TICKCocoaCategories
//
//  Created by Claris on 2016.09.10.
//  Copyright © 2016 Claris. All rights reserved.
//

#import "UIButton+TICKRound.h"

@implementation UIButton (TICKRound)
- (void)tick_makeButtonRound {
    //TODO: 兼容约束(改变大小)
    self.clipsToBounds = true;
    CGRect frame = self.frame;
    if (self.frame.size.width > self.frame.size.height) {
        frame.origin.y -= (frame.size.width - frame.size.height) / 2.0;
        frame.size.height = frame.size.width;
        self.frame = frame;
    } else if (frame.size.width < frame.size.height) {
        frame.origin.x -= (frame.size.height - frame.size.width) / 2.0;
        frame.size.width = frame.size.height;
        self.frame = frame;
    }
    self.layer.cornerRadius = frame.size.width / 2.0;
}
@end
