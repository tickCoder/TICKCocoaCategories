//
//  NSArray+TICKArchive.m
//  TICKCocoaCategories
//
//  Created by Claris on 2016.09.10.
//  Copyright © 2016 Claris. All rights reserved.
//

#import "NSArray+TICKArchive.h"

@implementation NSArray (TICKArchive)

+ (instancetype)tick_arrayWithArchiveFile:(NSString *)aFilePath {
    NSData *data = [NSData dataWithContentsOfFile:aFilePath];
    return [NSKeyedUnarchiver unarchiveObjectWithData:data];
}

+ (BOOL)tick_archiveArray:(NSArray *)aArray toFile:(NSString *)aFilePath {
    if (!aArray) {
        return false;
    }
    return [aArray tick_archiveToFile:aFilePath];
}

- (BOOL)tick_archiveToFile:(NSString *)aFilePath {
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:self];
    return [data writeToFile:aFilePath atomically:true];
}

@end
