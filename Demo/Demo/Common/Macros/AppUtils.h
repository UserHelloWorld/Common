//
//  AppUtils.h
//  Demo
//
//  Created by apple on 17/12/19.
//  Copyright © 2019 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface AppUtils : NSObject

@property (assign, nonatomic, class, readonly) CGFloat safeBottom;

@property (assign, nonatomic, class, readonly) CGFloat safeTop;

+ (UIViewController *)currentVisibleVC;

+ (UINavigationController *)currentNavController;

@end

NS_ASSUME_NONNULL_END
