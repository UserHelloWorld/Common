//
//  UIButton+SH.h
//
//
//  Created by apple on 16/06/16.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (SH)


/** 创建button */
+ (UIButton *)createButtonFrame:(CGRect)frame title:(NSString *)title backgroundImage:(UIImage *)image addSuperView:(UIView *)superView action:(void (^) (UIButton *sender))actionBlock;

/** 设置圆角半径 */
- (void)setRadius:(CGFloat)radius;

/** 设置边框宽度、颜色，半径 */
- (void)setBorderWidth:(CGFloat)width borderColor:(UIColor *)color radius:(CGFloat)radius;

@end
