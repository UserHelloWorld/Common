//
//  NFAPPUtils.h
//  Demo
//
//  Created by apple on 26/12/19.
//  Copyright © 2019 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface NFAPPUtils : NSObject

/// 默认字体
/// @param size 大小
+ (UIFont *)regularFont:(CGFloat)size;

/// 加粗字体
/// @param size 大小
+ (UIFont *)boldFont:(CGFloat)size;

///  拨打电话
+ (void)callPhoneWith:(NSString *)phone;

@end

NS_ASSUME_NONNULL_END
