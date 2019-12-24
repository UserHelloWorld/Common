//
//  NSArray+Safe.h
//  Demo
//
//  Created by apple on 17/12/19.
//  Copyright © 2019 apple. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSArray (Safe)

- (void)safeObjectIndex:(NSUInteger)index;

@end

NS_ASSUME_NONNULL_END

@interface NSMutableArray (Safe)

- (void)safeAddObject:(id)object;

- (void)safeInsertObject:(id)object atIndex:(NSUInteger)index;

- (void)safeInsertObjects:(NSArray *)objects atIndexs:(NSIndexSet *)indexs;

- (void)safeRemoveObjectAtIndex:(NSUInteger)index;

- (NSArray *)safeSubarrayWithRange:(NSRange)range;

@end
