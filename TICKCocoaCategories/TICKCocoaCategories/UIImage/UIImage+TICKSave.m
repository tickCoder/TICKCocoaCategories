//
//  UIImage+TICKSave.m
//  TICKCocoaCategories
//
//  Created by Claris on 2016.09.10.
//  Copyright © 2016 Claris. All rights reserved.
//

#import "UIImage+TICKSave.h"

@implementation UIImage (TICKSave)
- (BOOL)tick_writeToPNGFile:(NSString *)aFilePath {
    NSData *data = UIImagePNGRepresentation(self);
    return [data writeToFile:aFilePath atomically:true];
}

- (BOOL)tick_writeToJPGFile:(NSString *)aFilePath compression:(CGFloat)aCompression {
    NSData *data = UIImageJPEGRepresentation(self, aCompression);
    return [data writeToFile:aFilePath atomically:true];
}
@end
