//
//  UIColor+TICKRGBA.m
//  TICKCocoaCategories
//
//  Created by Claris on 2016.09.10.
//  Copyright © 2016 Claris. All rights reserved.
//

#import "UIColor+TICKRGBA.h"

@implementation UIColor (TICKRGBA)
- (NSArray<NSNumber *> *)tick_rgbaValue {
    const CGFloat *componets = CGColorGetComponents(self.CGColor);
    return @[@(componets[0]), @(componets[1]), @(componets[2]), @(componets[3])];
}
@end
