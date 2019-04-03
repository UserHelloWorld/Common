//
//  UILabel+SH.h
//
//
//  Created by apple on 16/06/16.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "UILabel+SH.h"

@implementation UILabel (SH)

- (CGSize)attributeText:(NSString *)text {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:text];
    NSMutableParagraphStyle   *paragraphStyle   = [[NSMutableParagraphStyle alloc] init];
   
    [paragraphStyle setLineSpacing:10.0];  //行间距
   
    [paragraphStyle setParagraphSpacing:20.0];  //段落间距
   
    [paragraphStyle setFirstLineHeadIndent:1];  //第一行头缩进
   
    [paragraphStyle setHeadIndent:15.0];  //头部缩进
    
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [text length])];
    
    [attributedString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:18] range:NSMakeRange(0, text.length)];
    
    CGSize size = [attributedString boundingRectWithSize:CGSizeMake(300, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin context:nil].size;
    return size;
}

@end
