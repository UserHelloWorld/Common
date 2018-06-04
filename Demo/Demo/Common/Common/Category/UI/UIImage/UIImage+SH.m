//
//  UIImage+SH.h
//
//
//  Created by apple on 16/06/16.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "UIImage+SH.h"

@implementation UIImage (SH)

// 通过颜色来生成一个纯色图片
+ (UIImage *)buttonImageBounds:(CGRect)bounds color:(UIColor *)color
{
    CGRect rect = CGRectMake(0, 0, bounds.size.width, bounds.size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return img;
}

@end
