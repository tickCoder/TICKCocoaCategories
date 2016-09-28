//
//  UIImage+TICKFile.h
//  TICKCocoaCategories
//
//  Created by Claris on 2016.09.10.
//  Copyright © 2016 Claris. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (TICKFile)
//TODO: imageWithContentsOfFile的提示插件
// 借助imageNamed的Xcode插件的自动提示
+ (UIImage *)imageNamed:(NSString *)name inDir:(NSString *)aDir;
@end
