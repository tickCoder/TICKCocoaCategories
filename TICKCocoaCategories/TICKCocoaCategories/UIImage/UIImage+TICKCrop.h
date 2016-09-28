//
//  UIImage+TICKCrop.h
//  TICKCocoaCategories
//
//  Created by Claris on 2016.09.10.
//  Copyright © 2016 Claris. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (TICKCrop)
+ (UIImage *)tick_imageCropRect:(CGRect)aRect fromImage:(UIImage *)aImage;
- (UIImage *)tick_imageCropRect:(CGRect)aRect;
@end
