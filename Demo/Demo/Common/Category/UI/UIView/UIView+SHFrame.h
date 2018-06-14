//
//  UIView+SHFrame.h
//
//
//  Created by apple on 16/06/16.
//  Copyright © 2016年 apple. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface UIView (SHFrame)

#pragma mark - 注意点
/* 分类中声明的属性，只会生成方法的声明，不会生成方法的实现和带有'_'的成员变量
 所以需要手动实现set get方法，否则调用，找不到实现方法会崩溃 */

@property (assign, nonatomic) CGSize  size;
@property (assign, nonatomic) CGFloat width;
@property (assign, nonatomic) CGFloat height;
@property (assign, nonatomic) CGFloat x;
@property (assign, nonatomic) CGFloat y;
@property (assign, nonatomic) CGFloat centerX;
@property (assign, nonatomic) CGFloat centerY;

@end
