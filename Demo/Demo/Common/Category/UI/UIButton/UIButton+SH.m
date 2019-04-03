//
//  UIButton+SH.h
//
//
//  Created by apple on 16/06/16.
//  Copyright © 2016年 apple. All rights reserved.
//


#import "UIButton+SH.h"
#include <objc/runtime.h>

static NSString *keyAssociation; //!< 关联的键

@implementation UIButton (SH)

- (void)setRadius:(CGFloat)radius
{
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = radius;
}

- (void)setBorderWidth:(CGFloat)width borderColor:(UIColor *)color radius:(CGFloat)radius
{    
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = radius;
    self.layer.borderWidth = width;
    self.layer.borderColor = color.CGColor;
}

+ (UIButton *)createButtonFrame:(CGRect)frame title:(NSString *)title backgroundImage:(UIImage *)image addSuperView:(UIView *)superView action:(void (^) (UIButton *sender))actionBlock
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = frame;
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setBackgroundImage:image forState:UIControlStateNormal];
    [btn addTarget:btn action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    objc_setAssociatedObject (btn, &keyAssociation, actionBlock, OBJC_ASSOCIATION_COPY_NONATOMIC );
    [superView addSubview:btn];
    return btn;
}

- (void)btnClick:(UIButton *)btn {
    void (^actionBlock) (UIButton *sender) = objc_getAssociatedObject (btn, &keyAssociation);
    if (actionBlock) {
        actionBlock(btn);
    }
}

@end

