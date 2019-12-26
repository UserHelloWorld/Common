//
//  NFMacro.h
//  Demo
//
//  Created by apple on 26/12/19.
//  Copyright © 2019 apple. All rights reserved.
//

#ifndef NFMacro_h
#define NFMacro_h

// 获取MainStoryboard 控制器
#define GetViewController(n) [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:n]
// 系统版本
//#define iOS [[UIDevice currentDevice].systemVersion floatValue]
// 获取启动delegage单例对象
#define APP ((AppDelegate *)[[UIApplication sharedApplication] delegate])
// App的window层
#define KeyWindow [[UIApplication sharedApplication] keyWindow]
// 屏幕宽高
#define kScreenWidth  [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
// 颜色RGB
#define RGB(R,G,B,A) [UIColor colorWithRed:((R)/255.0) green:((G)/255.0) blue:((B)/255.0) alpha:(A)]


#define LocalizedString(k,n) NSLocalizedString(k, n)

// 注册通知
#define AddNotification(m,n)        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(m) name:n object:nil]
// 发送通知
#define PostNotification(n,obj)     [[NSNotificationCenter defaultCenter] postNotificationName:n object:obj]
// 移除所有通知
#define RemoveNotification [[NSNotificationCenter defaultCenter] removeObserver:self];

#define kSetImage(name) [UIImage imageNamed:name]

#define WeakSelf(weakSelf) __weak typeof(self) weakSelf = self;

#define kIsiPhoneX ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) : NO)

// 屏幕宽度缩放系数
#define kScale(a)  (kScreenWidth/375.0)*a

#define kStatusBarAndNavigationBarHeight (kIsiPhoneX ? 88.f : 64.f)

#define AppTabbarHeight ([[UIApplication sharedApplication] statusBarFrame].size.height>20?83:50) // 适配iPhone x 底栏高度

#define bs if(kIsiPhoneX) { \
        \
} \

#ifdef __OBJC__

typedef void(^ReturnBlock)(id data);
#import "NFGlobalVariable.h"
#import "AppUtils.h"

#endif


#define weakify(var) __weak typeof(var) XYWeak_##var = var;

#define strongify(var) \
_Pragma("clang diagnostic push") \
_Pragma("clang diagnostic ignored \"-Wshadow\"") \
__strong typeof(var) var = XYWeak_##var; \
_Pragma("clang diagnostic pop")


#if DEBUG
#if __has_feature(objc_arc)
#define kWeak(self) @autoreleasepool{} __weak __typeof__(self) weak##_##self = self;
#define kStrong(self) @autoreleasepool{} __typeof__(self) self = weak##_##self;
#else
#define kWeak(self) @autoreleasepool{} __block __typeof__(self) block##_##self = self;
#define kStrong(self) @autoreleasepool{} __typeof__(self) self = block##_##self;
#endif
#else
#if __has_feature(objc_arc)
#define kWeak(self) @try{} @finally{} {} __weak __typeof__(self) weak##_##self = self;
#define kStrong(self) @try{} @finally{} __typeof__(self) self = weak##_##self;
#else
#define kWeak(self) @try{} @finally{} {} __block __typeof__(self) block##_##self = self;
#define kStrong(self) @try{} @finally{} __typeof__(self) self = block##_##self;
#endif
#endif


#ifdef DEBUG

#define NSLog(format, ...) NSLog((@"[行:%d] " format),__LINE__,##__VA_ARGS__)
#else
#define NSLog(...) /* 发布模式 */
#endif

#endif /* NFMacro_h */
