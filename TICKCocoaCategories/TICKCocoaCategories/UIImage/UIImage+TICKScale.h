//
//  UIImage+TICKScale.h
//  TICKCocoaCategories
//
//  Created by Claris on 2016.09.10.
//  Copyright © 2016 Claris. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (TICKScale)
- (UIImage *)tick_imageScaledToSize:(CGSize)aSize keepRatio:(BOOL)aKeepRatio;
@end
