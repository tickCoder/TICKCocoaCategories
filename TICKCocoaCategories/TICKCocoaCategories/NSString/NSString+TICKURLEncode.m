//
//  NSString+TICKURLEncode.m
//  TICKCocoaCategories
//
//  Created by Claris on 2016.09.10.
//  Copyright © 2016 Claris. All rights reserved.
//

#import "NSString+TICKURLEncode.h"

static const NSString *kTICKFilterString = @"!*'();:@&=+$,/?%#[]";

@implementation NSString (TICKURLEncode)
+ (NSString *)tick_stringByUrlEncodeString:(NSString *)aStr {
    return (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(NULL, (CFStringRef)aStr, NULL, (CFStringRef)kTICKFilterString,kCFStringEncodingUTF8));
}
- (NSString *)tick_stringByUrlEncoded {
    return (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(NULL, (CFStringRef)self, NULL, (CFStringRef)kTICKFilterString,kCFStringEncodingUTF8));
}
@end
