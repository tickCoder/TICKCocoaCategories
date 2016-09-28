//
//  UIImage+TICKScale.m
//  TICKCocoaCategories
//
//  Created by Claris on 2016.09.10.
//  Copyright © 2016 Claris. All rights reserved.
//

#import "UIImage+TICKScale.h"

@implementation UIImage (TICKScale)
- (UIImage *)tick_imageScaledToSize:(CGSize)aSize keepRatio:(BOOL)aKeepRatio {
    //FIXME: 如果是放大呢？
    CGFloat width = aSize.width;
    CGFloat height = aSize.height;
    CGFloat positionX = 0;
    CGFloat positionY = 0;
    if (aKeepRatio) {
        width = CGImageGetWidth(self.CGImage);
        height = CGImageGetHeight(self.CGImage);
        CGFloat ratioH = aSize.width / width;
        CGFloat ratioV = aSize.height / height;
        
        // if one of radioH/V > 1, use max, else min
        CGFloat ratio = 0;
        if(ratioH > 1 && ratioV > 1) {
            ratio = MAX(ratioH, ratioV);
        } else {
            ratio = MIN(ratioH, ratioV);
        }
        width *= ratio;
        height *= ratio;
        positionX = (aSize.width - width) / 2.0;
        positionY = (aSize.height - height) / 2.0;
    }
    UIGraphicsBeginImageContext(aSize);
    [self drawInRect:CGRectMake(positionX, positionY, width, height)];
    UIImage *scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return scaledImage;
}
@end
