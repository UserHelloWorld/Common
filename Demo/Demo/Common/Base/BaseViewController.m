//
//  BaseViewController.m
//
//  Created by apple on 16/06/16.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)createLeftButton
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(10, 20, 60, 50);
    [btn setImage:[UIImage imageNamed:@"back_light"] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"back_light"] forState:UIControlStateHighlighted];
    
    btn.contentHorizontalAlignment =UIControlContentHorizontalAlignmentLeft;
//    btn.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;

    [btn addTarget:self action:@selector(leftBtnClick) forControlEvents:UIControlEventTouchUpInside];
    // push进来的
    if (self.navigationController) {
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    } else {
        // present进来的
        [self.view addSubview:btn];
    }
    
}
- (void)leftBtnClick{
    if (self.presentingViewController != nil) {
        [self dismissViewControllerAnimated:YES completion:nil];
    } else {
        [self.navigationController popViewControllerAnimated:YES];
    }
    
}
- (void)presentWithViewController:(UIViewController *)viewController animated:(BOOL)animated completion:(void (^)(void))completion {
    
    UIViewController *rootViewCtrl = [UIApplication sharedApplication].keyWindow.rootViewController;
    
    if (nil == rootViewCtrl) rootViewCtrl = self;
    
    viewController.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    
    viewController.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    
    [rootViewCtrl presentViewController:viewController animated:YES completion:completion];
}

- (void)addCenterNotifyName:(NSNotificationName)notifyName object:(id)obj
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(messageNotify:) name:notifyName object:obj];
}

- (void)removeNotifyName:(NSNotificationName)notifyName {
    [[NSNotificationCenter defaultCenter] removeObserver:self name:notifyName object:nil];
}


- (void)removeAllNotify {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

/// 通知回调结果
- (void)messageNotify:(NSNotification *)notify{
    NSLog(@"%@",notify);
}


- (void)showAlertViewTitle:(NSString *)title message:(NSString *)message cancelStr:(NSString *)cancelStr confirmStr:(NSString *)confirmStr confirmCompletion:(void (^)(void))completion{
  
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    if (cancelStr) {
        UIAlertAction *cancel = [UIAlertAction actionWithTitle:cancelStr style:UIAlertActionStyleDefault handler:nil];
        [alertVC addAction:cancel];
    }
    if (confirmStr) {
        UIAlertAction *confirm = [UIAlertAction actionWithTitle:confirmStr style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            if (completion) completion();
        }];
        [alertVC addAction:confirm];
    }
    
    [self presentViewController:alertVC animated:YES completion:nil];
}

#pragma mark - Lazy
- (NSMutableArray *)dataArray {
    if (!_dataArray) {
        _dataArray = [NSMutableArray array];
    }
    return _dataArray;
}


@end
