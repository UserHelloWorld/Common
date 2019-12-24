//
//  AppUtils.m
//  Demo
//
//  Created by apple on 17/12/19.
//  Copyright © 2019 apple. All rights reserved.
//

#import "AppUtils.h"
#import "Header.h"

@implementation AppUtils

+ (CGFloat)safeBottom {
    if (@available (iOS 11.0,*)) {
        return KeyWindow.safeAreaInsets.bottom;
    }
    return 0;
}

+ (CGFloat)safeTop {
    if (@available (iOS 11.0,*)) {
           return KeyWindow.safeAreaInsets.top;
       }
       return 0;
}

+ (UIViewController *)currentVisibleVC {
    UIViewController *vc = nil;
    vc = [UIApplication sharedApplication].keyWindow.rootViewController;
    if (vc.presentedViewController) {
        vc = vc.presentedViewController;
    }
    if ([vc isKindOfClass:[UITabBarController class]]) {
        vc = ((UITabBarController *)vc).selectedViewController;
    }
    if ([vc isKindOfClass:[UINavigationController class]]) {
        vc = [(UINavigationController *)vc visibleViewController];
    }
    if (vc.presentedViewController) {
        vc = vc.presentedViewController;
    }
    return vc;
}

+ (UINavigationController *)currentNavController {
    UIViewController *vc = nil;
    vc = [UIApplication sharedApplication].keyWindow.rootViewController;
    if (vc.presentedViewController) {
        vc = vc.presentingViewController;
    }
    if ([vc isKindOfClass:[UITabBarController class]]) {
        vc = ((UITabBarController *)vc).selectedViewController;
    }
    if ([vc isKindOfClass:[UINavigationController class]]) {
        return (UINavigationController *)vc;
    }
    return nil;
}

+ (void)openURLWith:(NSString *)urlStr {
    if (urlStr == nil || urlStr.length == 0) {
        return;
    }
    NSURL *url = [NSURL URLWithString:urlStr];
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        if (@available (iOS 10.0, *)) {
            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:^(BOOL success) {
                
            }];
        } else {
            [[UIApplication sharedApplication] openURL:url];
        }
    }
}

@end
