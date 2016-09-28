//
//  UIImage+TICKColorMode.m
//  TICKCocoaCategories
//
//  Created by Claris on 2016.09.10.
//  Copyright © 2016 Claris. All rights reserved.
//

#import "UIImage+TICKColorMode.h"

@implementation UIImage (TICKColorMode)
- (UIImage *)tick_imageOfGrayMode {
    int ALPHA = 0, BLUE = 1, GREEN = 2, RED = 3;
    CGFloat scale = [[UIScreen mainScreen] scale];
    int imageWidth = self.size.width * scale;
    int imageHeight = self.size.height * scale;
    
    // 图片的像素点
    uint32_t *piexls = (uint32_t *)malloc(imageWidth * imageHeight * sizeof(uint32_t));
    // 清除像素点，以便保存透明度
    memset(piexls, 0, imageWidth * imageHeight * sizeof(uint32_t));
    // 创建image
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    uint32_t bitmapInfo = kCGBitmapByteOrder32Little | kCGImageAlphaPremultipliedLast;
    CGContextRef context = CGBitmapContextCreate(piexls,
                                                 imageWidth,
                                                 imageHeight,
                                                 8, //bitsPerComponent
                                                 imageWidth * sizeof(uint32_t), //bytesPerRow
                                                 colorSpace,
                                                 bitmapInfo);
    CGContextDrawImage(context,
                       CGRectMake(0, 0, imageWidth, imageHeight),
                       self.CGImage);
    for (int y=0; y<imageHeight; y++) {
        for (int x=0; x<imageWidth; x++) {
            uint8_t *rgbaPiexl = (uint8_t *)&piexls[y*imageWidth+x];
            uint32_t gray = 0.3*rgbaPiexl[RED] + 0.59*rgbaPiexl[GREEN] + 0.11*rgbaPiexl[BLUE];
            rgbaPiexl[RED] = rgbaPiexl[GREEN] = rgbaPiexl[BLUE] = gray;
        }
    }
    CGImageRef image = CGBitmapContextCreateImage(context);
    
    CGContextRelease(context);
    CGColorSpaceRelease(colorSpace);
    free(piexls);
    
    UIImage *returnImage = [UIImage imageWithCGImage:image
                                               scale:scale
                                         orientation:UIImageOrientationUp];
    CGImageRelease(image);
    
    return returnImage;
}
@end
