//
//  NSDictionary+TICKSortedKeys.m
//  TICKCocoaCategories
//
//  Created by Claris on 2016.09.10.
//  Copyright © 2016 Claris. All rights reserved.
//

#import "NSDictionary+TICKSortedKeys.h"

@implementation NSDictionary (TICKSortedKeys)
- (NSArray *)tick_allKeysNumericSortedAscend:(BOOL)aAscend {
    NSArray *sorted = [[self allKeys] sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        if (aAscend) {
            return [obj1 compare:obj2 options:NSNumericSearch];
        } else {
            return [obj2 compare:obj1 options:NSNumericSearch];
        }
    }];
    return sorted;
}
@end
