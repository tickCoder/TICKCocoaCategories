//
//  UIColor+TICKHex.h
//  TICKCocoaCategories
//
//  Created by Claris on 2016.09.10.
//  Copyright © 2016 Claris. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (TICKHex)

/**
 *  返回hex值代表的颜色，如果数据有错误，返回默认的whiteColor
 */
+ (UIColor *)tick_colorWithHexStr:(NSString *)aHexStr alpha:(CGFloat)aAlpha;
+ (UIColor *)tick_colorWithHex:(long)aHex alpha:(CGFloat)aAlpha;

//TODO: 将颜色转为16进制
//+ (NSString *)tick_hexStringOfColor:(UIColor *)aColor;
@end
