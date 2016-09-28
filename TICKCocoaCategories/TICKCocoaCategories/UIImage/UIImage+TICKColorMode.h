//
//  UIImage+TICKColorMode.h
//  TICKCocoaCategories
//
//  Created by Claris on 2016.09.10.
//  Copyright © 2016 Claris. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (TICKColorMode)
/**
 *  将图片变为灰色，保留alpha。
 *  原地址：https://github.com/lbsnrs/UIImage-Grayscale
 */
- (UIImage *)tick_imageOfGrayMode;
@end
