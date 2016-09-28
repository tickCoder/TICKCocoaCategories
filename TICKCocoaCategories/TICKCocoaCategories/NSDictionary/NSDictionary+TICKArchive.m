//
//  NSDictionary+TICKArchive.m
//  TICKCocoaCategories
//
//  Created by Claris on 2016.09.10.
//  Copyright © 2016 Claris. All rights reserved.
//

#import "NSDictionary+TICKArchive.h"

@implementation NSDictionary (TICKArchive)

+ (instancetype)tick_dictionaryWithArchiveFile:(NSString *)aFilePath {
    NSData *data = [NSData dataWithContentsOfFile:aFilePath];
    return [NSKeyedUnarchiver unarchiveObjectWithData:data];
}

+ (BOOL)tick_archiveDictionary:(NSDictionary *)aDict toFile:(NSString *)aFilePath {
    if (!aDict) {
        return false;
    }
    return [aDict tick_archiveToFile:aFilePath];
}

- (BOOL)tick_archiveToFile:(NSString *)aFilePath {
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:self];
    return [data writeToFile:aFilePath atomically:true];
}

@end
