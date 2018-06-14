//
//  NSDate+SH.h
//
//
//  Created by apple on 16/06/16.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (SH)

/** 获取当前时间 年月日 时分秒  */
+ (void)currentDateValue:(void(^)(NSInteger year,NSInteger month,NSInteger day,NSInteger hour,NSInteger minute,NSInteger second))returnValue;

@end
