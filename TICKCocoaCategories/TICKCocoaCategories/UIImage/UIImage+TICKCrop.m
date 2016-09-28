//
//  UIImage+TICKCrop.m
//  TICKCocoaCategories
//
//  Created by Claris on 2016.09.10.
//  Copyright © 2016 Claris. All rights reserved.
//

#import "UIImage+TICKCrop.h"

@implementation UIImage (TICKCrop)
+ (UIImage *)tick_imageCropRect:(CGRect)aRect fromImage:(UIImage *)aImage {
    CGImageRef srcImageRef = [aImage CGImage];
    CGImageRef newImageRef = CGImageCreateWithImageInRect(srcImageRef, aRect);
    UIImage *newImage = [UIImage imageWithCGImage:newImageRef];
    CGImageRelease(newImageRef);
    CGImageRelease(srcImageRef);
    return newImage;
}

- (UIImage *)tick_imageCropRect:(CGRect)aRect {
    return [UIImage tick_imageCropRect:aRect fromImage:self];
}
@end
