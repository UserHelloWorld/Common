//
//  UIButton+SH.h
//
//
//  Created by apple on 16/06/16.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "UIButton+SH.h"

@implementation UIButton (SH)


- (void)setRadius:(CGFloat)radius
{
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = radius;
}

- (void)setBorderWidth:(CGFloat)width borderColor:(UIColor *)color radius:(CGFloat)radius {
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = radius;
    self.layer.borderWidth = width;
    self.layer.borderColor = color.CGColor;
}

@end
