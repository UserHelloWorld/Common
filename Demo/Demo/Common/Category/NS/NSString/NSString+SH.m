//
//  NSString+SH.h
//  
//
//  Created by apple on 16/06/16.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "NSString+SH.h"

@implementation NSString (SH)

- (CGSize)calculateSizeWithFont:(UIFont *)font rectWithSize:(CGSize)size
{
    if (self.length < 1) return CGSizeZero;
     CGSize calculateSize = [self boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil].size;
    return calculateSize;
}


- (NSMutableAttributedString *)convertAttributedStringWithFont:(UIFont *)font lineSpacing:(CGFloat)lineSpacing firstLineHeadIndent:(CGFloat)firstLineHeadIndent headIndent:(CGFloat)headIndent
{
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self];
    
    NSMutableParagraphStyle *paragraphStyle   = [[NSMutableParagraphStyle alloc] init];
    
    paragraphStyle.lineSpacing = lineSpacing; // 行间距
//    paragraphStyle.paragraphSpacing = 0; // 段落间距
    paragraphStyle.firstLineHeadIndent = firstLineHeadIndent; // 第一行头缩进
    paragraphStyle.headIndent = headIndent; //头部缩进
//    paragraphStyle.tailIndent = 10; //尾部缩进
    
    [attributedString addAttributes:@{NSParagraphStyleAttributeName:paragraphStyle,
                                      NSFontAttributeName:font}
                              range:NSMakeRange(0, self.length)];
    return attributedString;
}

+ (CGSize)calculateAttributedString:(NSAttributedString *)attributedString rectWithSize:(CGSize)size
{
    if (attributedString.length < 1) return CGSizeZero;

    CGSize calculateSize = [attributedString boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin context:nil].size;
    
    return calculateSize;
}


@end
