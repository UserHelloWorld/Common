//
//  NSDictionary+Safe.h
//  Demo
//
//  Created by apple on 17/12/19.
//  Copyright © 2019 apple. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDictionary (Safe)

@end

NS_ASSUME_NONNULL_END

@interface NSMutableDictionary (Safe)

- (void)safeSetObject:(id)obj forKey:(NSString *)key;

- (void)safeObjectForKey:(NSString *)key;

- (void)safeSetDictionary:(NSDictionary *)dict;

- (void)safeRemoveObjectForKey:(NSString *)key;

@end
