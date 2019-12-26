//
//  UIColor+EX.h
//  Demo
//
//  Created by apple on 26/12/19.
//  Copyright © 2019 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (EX)

+ (UIColor *)colorWithHexString:(NSString *)hex;

+ (UIColor *)colorWithHexString:(NSString *)hex alpha:(CGFloat)alpha;
//根据16进制RGB数值，返回UIColor
+ (UIColor *)colorWithHexRGB:(NSInteger)rgbValue;

+ (UIColor *)colorWithHexRGB:(NSInteger)rgbValue alpha:(CGFloat)alpha;

@end

NS_ASSUME_NONNULL_END
