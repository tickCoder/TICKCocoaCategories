//
//  UIColor+TICKHex.m
//  TICKCocoaCategories
//
//  Created by Claris on 2016.09.10.
//  Copyright © 2016 Claris. All rights reserved.
//

#import "UIColor+TICKHex.h"

@implementation UIColor (TICKHex)
+ (UIColor *)tick_colorWithHexStr:(NSString *)aHexStr alpha:(CGFloat)aAlpha {
    if (aAlpha < 0 || aAlpha > 1)  aAlpha = 1.0;
    
    NSCharacterSet *cs = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *hexStr = [[aHexStr stringByTrimmingCharactersInSet:cs] uppercaseString];
    if ([hexStr hasPrefix:@"#"]) {
        hexStr = [hexStr stringByReplacingOccurrencesOfString:@"#" withString:@""];
    }
    if ([hexStr hasPrefix:@"0X"]) {
        hexStr = [hexStr stringByReplacingOccurrencesOfString:@"0X" withString:@""];
    }
    if (hexStr.length != 6) {
        return [UIColor whiteColor];
    }
    
    NSString *redString = [hexStr substringWithRange:NSMakeRange(0, 2)];
    NSString *greenString = [hexStr substringWithRange:NSMakeRange(2, 2)];
    NSString *blueString = [hexStr substringWithRange:NSMakeRange(4, 2)];
    
    unsigned int redInt=0, greenInt=0, blueInt=0;
    [[NSScanner scannerWithString:redString] scanHexInt:&redInt];
    [[NSScanner scannerWithString:greenString] scanHexInt:&greenInt];
    [[NSScanner scannerWithString:blueString] scanHexInt:&blueInt];
    
    CGFloat redFloat = (CGFloat)redInt / 255.0;
    CGFloat greenFloat = (CGFloat)greenInt / 255.0;
    CGFloat blueFloat = (CGFloat)blueInt / 255.0;
    return [UIColor colorWithRed:redFloat green:greenFloat blue:blueFloat alpha:aAlpha];
}

+ (UIColor *)tick_colorWithHex:(long)aHex alpha:(CGFloat)aAlpha {
    if (aAlpha < 0 || aAlpha > 1)  aAlpha = 1.0;
    CGFloat redValue = (CGFloat)((aHex & 0xFF0000 >> 16)/255.0);
    CGFloat greenValue = (CGFloat)((aHex & 0xFF00 >> 8)/255.0);
    CGFloat blueValue = (CGFloat)((aHex & 0xFF)/255.0);
    return [UIColor colorWithRed:redValue green:greenValue blue:blueValue alpha:aAlpha];
}
@end
