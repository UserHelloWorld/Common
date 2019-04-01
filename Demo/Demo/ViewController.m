//
//  ViewController.m
//  Demo
//
//  Created by apple on 04/06/18.
//  Copyright © 2018年 apple. All rights reserved.
//

#import "ViewController.h"
#import "NSDictionary+SH.h"
#import "Common/Category/UI/UIImage/UIImage+SH.h"
#import "Common/Category/UI/UIButton/UIButton+SH.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btn;

@end



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   UIImage *image = [[UIImage buttonImageBounds:CGRectMake(0, 0, 60, 40) color:[UIColor purpleColor]] circleImage];
    int a[] = {1,2,3,4};
    int *p = a;
    NSLog(@"%d %d %d",*p,*(p+1),*(p+2));
    
    UIButton *btn = [UIButton createButtonFrame:CGRectMake(100, 100, 100, 100) title:nil backgroundImage:image action:^(UIButton *sender) {
       NSLog(@"%@",sender.titleLabel.text);

    }];
    [btn setTitle:@"ds" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    
    
}


+ (UIViewController *)user {
    return [[UIViewController alloc] init];
}
+ (void)setUser:(UIViewController *)user {

}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//
    [self showAlertViewTitle:@"是多少" message:@"的士速递" cancelStr:@"取消" confirmStr:@"确定" confirmCompletion:^{
        NSLog(@"sdsdsd");
    }];
    
//    UIViewController *vc = ViewController.user;
//    vc.view.backgroundColor = [UIColor redColor];
//    [self presentViewController:vc animated:YES completion:nil];
}

@end
