//
//  UIImage+TICKFile.m
//  TICKCocoaCategories
//
//  Created by Claris on 2016.09.10.
//  Copyright © 2016 Claris. All rights reserved.
//

#import "UIImage+TICKFile.h"

@implementation UIImage (TICKFile)
+ (UIImage *)imageNamed:(NSString *)name inDir:(NSString *)aDir {
    NSString *filePath = [aDir stringByAppendingPathComponent:name];
    return [UIImage imageWithContentsOfFile:filePath];
}
@end
