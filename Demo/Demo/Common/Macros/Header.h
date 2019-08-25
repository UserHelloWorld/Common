//
//  Header.h
//
//
//  Created by apple on 16/06/16.
//  Copyright © 2016年 apple. All rights reserved.
//

#ifndef Header_h
#define Header_h

// 获取MainStoryboard 控制器
#define GetViewController(n) [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:n]
// 系统版本
//#define iOS [[UIDevice currentDevice].systemVersion floatValue]
// 获取启动delegage单例对象
#define APP ((AppDelegate *)[[UIApplication sharedApplication] delegate])
// App的window层
#define KeyWindow [[UIApplication sharedApplication] keyWindow]
// 屏幕宽高
#define Width  [UIScreen mainScreen].bounds.size.width
#define Height [UIScreen mainScreen].bounds.size.height
// 颜色RGB
#define RGB(R,G,B,A) [UIColor colorWithRed:((R)/255.0) green:((G)/255.0) blue:((B)/255.0) alpha:(A)]
#define LocalizedString(k,n) NSLocalizedString(k, n)

// 注册通知
#define AddNotification(m,n)        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(m) name:n object:nil]
// 发送通知
#define PostNotification(n,obj)     [[NSNotificationCenter defaultCenter] postNotificationName:n object:obj]
// 移除所有通知
#define RemoveNotification [[NSNotificationCenter defaultCenter] removeObserver:self];


#define WeakSelf(weakSelf) __weak typeof(self) weakSelf = self;

#define kIsiPhoneX ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) : NO)

#define kStatusBarAndNavigationBarHeight (kIsiPhoneX ? 88.f : 64.f)


#define AppTabbarHeight ([[UIApplication sharedApplication] statusBarFrame].size.height>20?83:50) // 适配iPhone x 底栏高度

#define bs if(kIsiPhoneX) { \
        \
} \

#ifdef __OBJC__

typedef void(^ReturnBlock)(id data);
#import "NFGlobalVariable.h"



#endif


#define weakify(var) __weak typeof(var) XYWeak_##var = var;

#define strongify(var) \
_Pragma("clang diagnostic push") \
_Pragma("clang diagnostic ignored \"-Wshadow\"") \
__strong typeof(var) var = XYWeak_##var; \
_Pragma("clang diagnostic pop")


#ifdef DEBUG

#define NSLog(format, ...) NSLog((@"[行:%d] " format),__LINE__,##__VA_ARGS__)
#else
#define NSLog(...) /* 发布模式 */
#endif

#endif /* Header_h */
