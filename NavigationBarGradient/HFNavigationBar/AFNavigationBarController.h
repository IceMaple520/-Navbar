//
//  AFNavigationBarController.h
//  NavigationBarGradient
//
//  Created by 司华锋 on 2017/2/22.
//  Copyright © 2017年 HF. All rights reserved.
//


/**
 
 
 《《《《《《《《《《模仿别人写的导航栏渐变，并实现滚动过程中隐藏按钮、文字等，喜欢的可以参考》》》》》》》》》》
 
 
 */
#import <UIKit/UIKit.h>

@interface AFNavigationBarController : UIViewController



- (void)followScrollView:(UIView *)scrollableView;

- (void)showNavbar;

- (void)refreshNavbar;

@property (nonatomic,assign) BOOL scrollingEnabled;







@end
