//
//  NSString+TICKCheck.h
//  TICKCocoaCategories
//
//  Created by Claris on 2016.09.10.
//  Copyright © 2016 Claris. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (TICKCheck)

+ (BOOL)tick_isValidEmail:(NSString *)aInput;
- (BOOL)tick_isValidEmail;

//TODO: 手机号码
//TODO: predicate
@end
