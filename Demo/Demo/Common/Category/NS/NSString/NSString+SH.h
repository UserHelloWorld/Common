//
//  NSString+SH.h
//
//
//  Created by apple on 16/06/16.
//  Copyright © 2016年 apple. All rights reserved.
///

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (SH)

/** 计算文字大小 */
- (CGSize)calculateSizeWithFont:(UIFont *)font rectWithSize:(CGSize)size;

/**
 NSString转换为NSMutableAttributedString

 @param font 字体
 @param lineSpacing 行间距
 @param firstLineHeadIndent 第一行缩进
 @param headIndent 头部缩进
 */
- (NSMutableAttributedString *)convertAttributedStringWithFont:(UIFont *)font lineSpacing:(CGFloat)lineSpacing firstLineHeadIndent:(CGFloat)firstLineHeadIndent headIndent:(CGFloat)headIndent;

/** 计算AttributedString大小 */
+ (CGSize)calculateAttributedString:(NSAttributedString *)attributedString rectWithSize:(CGSize)size;

@end
