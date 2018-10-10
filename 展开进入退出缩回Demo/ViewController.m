//
//  ViewController.m
//  展开进入退出缩回Demo
//
//  Created by leve on 2018/5/3.
//  Copyright © 2018年 leve. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"
#import "HYTransition.h"

/***  当前屏幕宽度 */
#define kScreenWidth  [[UIScreen mainScreen] bounds].size.width
/***  当前屏幕高度 */
#define kScreenHeight  [[UIScreen mainScreen] bounds].size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake((kScreenWidth - 100)/2, (kScreenHeight - 100)/2 - 150, 100, 100);
    btn.backgroundColor = [UIColor yellowColor];
    btn.layer.cornerRadius = 50;
    btn.layer.masksToBounds = YES;
    [btn addTarget:self action:@selector(presentAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn1.frame = CGRectMake((kScreenWidth - 100)/2, (kScreenHeight - 100)/2, 100, 100);
    btn1.backgroundColor = [UIColor greenColor];
    btn1.layer.cornerRadius = 50;
    btn1.layer.masksToBounds = YES;
    [btn1 addTarget:self action:@selector(presentAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn2.frame = CGRectMake((kScreenWidth - 100)/2, (kScreenHeight - 100)/2 + 150, 100, 100);
    btn2.backgroundColor = [UIColor orangeColor];
    btn2.layer.cornerRadius = 50;
    btn2.layer.masksToBounds = YES;
    [btn2 addTarget:self action:@selector(presentAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
}
- (void)presentAction:(UIButton *)btn
{
    HYTransition *trans = [[HYTransition alloc] init];
    trans.fromView = btn;
    
    NextViewController *nextVc = [[NextViewController alloc] init];
    nextVc.transition = trans;
    [self presentViewController:nextVc animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
