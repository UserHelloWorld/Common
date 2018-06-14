//
//  UIImage+Color.m
//  
//
//  Created by apple on 2017/11/13.
//  Copyright © 2017年 chenxin · luo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (SH)

/** 通过颜色来生成一个纯色图片 */
+ (UIImage *)buttonImageBounds:(CGRect)bounds color:(UIColor *)color;

/** 压缩图片指定范围 */
+ (NSData *)zipImageWithImage:(UIImage *)image;

@end
