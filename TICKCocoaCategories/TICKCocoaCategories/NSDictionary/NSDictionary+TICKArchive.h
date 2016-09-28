//
//  NSDictionary+TICKArchive.h
//  TICKCocoaCategories
//
//  Created by Claris on 2016.09.10.
//  Copyright © 2016 Claris. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (TICKArchive)

/**
 *  使用NSKeyedUnarchiver加载Dictionary对象
 */
+ (instancetype)tick_dictionaryWithArchiveFile:(NSString *)aFilePath;

/**
 *  将Dictionary对象保存到NSKeyedArchiver对象
 */
+ (BOOL)tick_archiveDictionary:(NSDictionary *)aDict toFile:(NSString *)aFilePath;

/**
 *  将Dictionary对象保存到NSKeyedArchiver对象
 */
- (BOOL)tick_archiveToFile:(NSString *)aFilePath;

@end
