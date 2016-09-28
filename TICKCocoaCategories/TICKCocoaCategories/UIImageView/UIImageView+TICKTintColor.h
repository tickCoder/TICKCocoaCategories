//
//  UIImageView+TICKTintColor.h
//  TICKCocoaCategories
//
//  Created by Claris on 2016.09.10.
//  Copyright © 2016 Claris. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (TICKTintColor)
- (void)tick_setTintColor:(UIColor *)aColor;
- (void)tick_setImage:(UIImage *)aImage tintColor:(UIColor *)aColor;
@end
