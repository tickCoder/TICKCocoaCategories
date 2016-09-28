//
//  UIImage+TICKSnapshot.m
//  TICKCocoaCategories
//
//  Created by Claris on 2016.09.10.
//  Copyright © 2016 Claris. All rights reserved.
//

#import "UIImage+TICKSnapshot.h"

@implementation UIImage (TICKSnapshot)
+ (UIImage *)tick_imageSnapshotedFromView:(UIView *)aView {
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(CGRectGetWidth(aView.frame), CGRectGetHeight(aView.frame)), NO, 1.0);
    [aView drawViewHierarchyInRect:CGRectMake(0, 0, CGRectGetWidth(aView.frame), CGRectGetHeight(aView.frame)) afterScreenUpdates:NO];
    UIImage *tSnapshotImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return tSnapshotImage;
}
@end
