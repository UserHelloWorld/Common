//
//  BaseViewController.h
//  
//
//  Created by apple on 16/06/16.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController

@property (strong, nonatomic) NSMutableArray *dataArray; //!< 数据源

- (void)presentWithViewController:(UIViewController *)viewController animated:(BOOL)animated completion:(void (^)(void))completion;

- (void)leftBtnClick;

/** 创建左按钮 */
- (void)createLeftButton;

/** 注册通知中心 */
- (void)addCenterNotifyName:(NSNotificationName)notifyName;

/** 移除通知 */
- (void)removeNotifyName:(NSNotificationName)notifyName;

/** 移除所有通知 */
- (void)removeAllNotify;

/** 发送通知返回结果 */
- (void)messageNotify:(NSNotification *)notify;

@end
