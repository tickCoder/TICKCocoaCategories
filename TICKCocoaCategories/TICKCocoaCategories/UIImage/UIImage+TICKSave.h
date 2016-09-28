//
//  UIImage+TICKSave.h
//  TICKCocoaCategories
//
//  Created by Claris on 2016.09.10.
//  Copyright © 2016 Claris. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (TICKSave)
- (BOOL)tick_writeToPNGFile:(NSString *)aFilePath;
- (BOOL)tick_writeToJPGFile:(NSString *)aFilePath compression:(CGFloat)aCompression;
@end
