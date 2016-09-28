//
//  NSDictionary+TICKSortedKeys.h
//  TICKCocoaCategories
//
//  Created by Claris on 2016.09.10.
//  Copyright © 2016 Claris. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (TICKSortedKeys)
- (NSArray *)tick_allKeysNumericSortedAscend:(BOOL)aAscend;
@end
