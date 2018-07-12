//
//  UIView+SH.m
//  Demo
//
//  Created by apple on 15/06/18.
//  Copyright © 2018年 apple. All rights reserved.
//


#import "UIView+SH.h"

@implementation UIView (SH)

- (void)setBoardRadius:(CGSize)size view:(UIView *)view
{
    CAShapeLayer *layer = [[CAShapeLayer alloc] init];
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:view.bounds byRoundingCorners:UIRectCornerAllCorners cornerRadii:size];
    layer.path = path.CGPath;
    self.layer.mask = layer;
}

@end
