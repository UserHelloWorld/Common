//
//  ViewController.m
//  Demo
//
//  Created by apple on 04/06/18.
//  Copyright © 2018年 apple. All rights reserved.
//

#import "ViewController.h"
#import "NSDictionary+SH.h"
@interface ViewController ()

@end



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    int a[] = {1,2,3,4};
    int *p = a;
    NSLog(@"%d %d %d",*p,*(p+1),*(p+2));
}

+ (UIViewController *)user {
    return [[UIViewController alloc] init];
}
+ (void)setUser:(UIViewController *)user {

}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UIViewController *vc = ViewController.user;
    vc.view.backgroundColor = [UIColor redColor];
    [self presentViewController:vc animated:YES completion:nil];
}

@end
