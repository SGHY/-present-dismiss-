//
//  HYTransition.h
//  展开进入退出缩回Demo
//
//  Created by leve on 2018/5/3.
//  Copyright © 2018年 leve. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, HYTransitionType) {
    HYPresent = 0,//管理present动画
    HYDismiss//管理dismiss动画
};
@interface HYTransition : NSObject<UIViewControllerAnimatedTransitioning,UIViewControllerTransitioningDelegate>
/** 点击哪个视图present到下一个页面的，fromView就是那个视图*/
@property (strong, nonatomic) UIView *fromView;
@end
