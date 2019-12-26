//
//  NFAPPUtils.m
//  Demo
//
//  Created by apple on 26/12/19.
//  Copyright © 2019 apple. All rights reserved.
//

#import "NFAPPUtils.h"

@implementation NFAPPUtils

+ (UIFont *)regularFont:(CGFloat)size
{
   return [UIFont fontWithName:@"PingFangSC-regular" size:size];
}

+ (UIFont *)boldFont:(CGFloat)size
{
//    PingFangSC-Medum
    return [UIFont fontWithName:@"DINAlternate-Bold" size:size];
}

+ (void)callPhoneWith:(NSString *)phone {
    if (phone == nil || phone.length < 1) {
        return;
    }
    NSMutableString *str = [[NSMutableString alloc] initWithFormat:@"tel:%@",phone];
    [self openURLWith:str];
}

+ (void)openURLWith:(NSString *)urlStr {
    NSURL *url = [NSURL URLWithString:urlStr];
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        if (@available(iOS 10.0, *)) {
            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:^(BOOL success) {
                   }];
        } else {
            [[UIApplication sharedApplication] canOpenURL:url];
        }
    }
}

@end
