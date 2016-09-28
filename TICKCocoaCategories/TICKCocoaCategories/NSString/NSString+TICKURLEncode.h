//
//  NSString+TICKURLEncode.h
//  TICKCocoaCategories
//
//  Created by Claris on 2016.09.10.
//  Copyright © 2016 Claris. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (TICKURLEncode)
+ (NSString *)tick_stringByUrlEncodeString:(NSString *)aStr;
- (NSString *)tick_stringByUrlEncoded;
@end
