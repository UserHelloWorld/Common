//
//  NSDictionary+Safe.m
//  Demo
//
//  Created by apple on 17/12/19.
//  Copyright © 2019 apple. All rights reserved.
//

#import "NSDictionary+Safe.h"

@implementation NSDictionary (Safe)

@end

/*++++++++++++++++++++++++++++*/
/*++++++++++++++++++++++++++++*/
/*++++++++++++++++++++++++++++*/

@implementation NSMutableDictionary (Safe)

- (void)safeSetObject:(id)obj forKey:(NSString *)key {
    if (!key) {
        return;
    }
    if (!obj || [obj isKindOfClass:[NSNull class]]) {
        return;
    }
    [self setValue:obj forKey:key];
}

- (void)safeObjectForKey:(NSString *)key {
    if (key) {
        [self objectForKey:key];;
    }
}

- (void)safeSetDictionary:(NSDictionary *)dict {
    if (dict) {
        [self setDictionary:dict];
    }
}

- (void)safeRemoveObjectForKey:(NSString *)key {
    if (key) {
        [self removeObjectForKey:key];
    }
}

@end
