//
//  ViewController.m
//  Demo
//
//  Created by apple on 04/06/18.
//  Copyright © 2018年 apple. All rights reserved.
//

#import "ViewController.h"
#import "NSDictionary+SH.h"
#import "UIButton+SH.h"
#import "UIImage+SH.h"
#import "UILabel+SH.h"
#import "NSString+SH.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btn;

@end



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//   UIImage *image = [[UIImage buttonImageBounds:CGRectMake(0, 0, 60, 40) color:[UIColor purpleColor]] circleImage];
//    int a[] = {1,2,3,4};
//    int *p = a;
//    NSLog(@"%d %d %d",*p,*(p+1),*(p+2));
//    [UIButton createButtonFrame:CGRectMake(100, 100, 100, 100) title:@"的脸孔" backgroundImage:image addSuperView:self.view action:^(UIButton *sender) {
//
//    }];
    
    
    
    UILabel *label = [[UILabel alloc] init];
    NSString *text = @"算得上是所多多所多所算得上是所多多所多所算得上是所多多所多所算得上是所多多所多所算得上是所多多所多所算得上是所多多所多所算得上是所多多所多所算得上是所多多所多所算得上是所多多所多所算得上是所多多所多所算得上是所多多所多所算得上是所多多所多所算得上是所多多所多所算得上是所多多所多所算得上是所多多所多所算得上是所多多所多所算得上是所多多所多所算得上是所多多所多所算得上是所多多所多所算得上是所多多所多所算得上是所多多所多所12";
    
   NSAttributedString *attributedString = [text convertAttributedStringWithFont:[UIFont systemFontOfSize:17] lineSpacing:10  firstLineHeadIndent:10 headIndent:0];
    CGSize size =  [NSString calculateAttributedString:attributedString rectWithSize:CGSizeMake(300, MAXFLOAT)];
    
//  size =  [text calculateSizeWithFont:[UIFont systemFontOfSize:17] rectWithSize:CGSizeMake(300, MAXFLOAT)];
    
    label.frame = CGRectMake(10, 100, 300, size.height);
    label.numberOfLines = 0;
    label.backgroundColor = [UIColor lightGrayColor];
    label.attributedText = attributedString;
//    label.text = text;
    [self.view addSubview:label];
	
    
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
