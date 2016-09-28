//
//  NSArray+TICKArchive.h
//  TICKCocoaCategories
//
//  Created by Claris on 2016.09.10.
//  Copyright © 2016 Claris. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (TICKArchive)

/**
 *  使用NSKeyedUnarchiver加载Array对象
 */
+ (instancetype)tick_arrayWithArchiveFile:(NSString *)aFilePath;

/**
 *  将Array对象保存到NSKeyedArchiver对象
 */
+ (BOOL)tick_archiveArray:(NSArray *)aArray toFile:(NSString *)aFilePath;

/**
 *  将Array对象保存到NSKeyedArchiver对象
 */
- (BOOL)tick_archiveToFile:(NSString *)aFilePath;

@end
