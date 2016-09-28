//
//  UIImageView+TICKTintColor.m
//  TICKCocoaCategories
//
//  Created by Claris on 2016.09.10.
//  Copyright © 2016 Claris. All rights reserved.
//

#import "UIImageView+TICKTintColor.h"

@implementation UIImageView (TICKTintColor)
- (void)tick_setTintColor:(UIColor *)aColor {
    [self tick_setImage:self.image tintColor:aColor];
}

- (void)tick_setImage:(UIImage *)aImage tintColor:(UIColor *)aColor {
    self.tintColor = aColor;
    UIImageRenderingMode mode = UIImageRenderingModeAlwaysTemplate;
    if (aImage.renderingMode != mode) {
        aImage = [aImage imageWithRenderingMode:mode];
    }
    self.image = aImage;
}
@end
