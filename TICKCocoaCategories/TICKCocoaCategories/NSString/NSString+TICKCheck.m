//
//  NSString+TICKCheck.m
//  TICKCocoaCategories
//
//  Created by Claris on 2016.09.10.
//  Copyright © 2016 Claris. All rights reserved.
//

#import "NSString+TICKCheck.h"

@implementation NSString (TICKCheck)

+ (BOOL)tick_isValidEmail:(NSString *)aInput {
    NSString *regex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [predicate evaluateWithObject:aInput];
}

- (BOOL)tick_isValidEmail {
    return [NSString tick_isValidEmail:self];
}

@end
