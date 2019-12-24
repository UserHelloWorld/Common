//
//  NSArray+Safe.m
//  Demo
//
//  Created by apple on 17/12/19.
//  Copyright © 2019 apple. All rights reserved.
//

#import "NSArray+Safe.h"

@implementation NSArray (Safe)



@end

/*++++++++++++++++++++++++++++*/
/*++++++++++++++++++++++++++++*/
/*++++++++++++++++++++++++++++*/

@implementation NSMutableArray (Safe)

- (void)safeAddObject:(id)object
{
    if (object) {
        [self addObject:object];
    }
}

- (void)safeInsertObject:(id)object atIndex:(NSUInteger)index
{
    if (object == nil) {
        return;
    } else if (index > self.count) {
        return;
    } else {
        [self insertObject:object atIndex:index];
    }
}

- (void)safeInsertObjects:(NSArray *)objects atIndexs:(NSIndexSet *)indexs
{
    if (indexs == nil) {
        return;
    } else if (indexs.count != objects.count || indexs.firstIndex >= objects.count || indexs.lastIndex >= objects.count) {
        return;
    } else {
        [self insertObjects:objects atIndexes:indexs];
    }
}

- (void)safeRemoveObjectAtIndex:(NSUInteger)index
{
    if (index >= self.count) {
        return;
    }
    return [self removeObjectAtIndex:index];
}

- (NSArray *)safeSubarrayWithRange:(NSRange)range
{
    if (range.location + range.length > self.count) {
        return self;
    }
    return [self subarrayWithRange:range];
}

@end
