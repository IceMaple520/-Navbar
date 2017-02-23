//
//  AFNavigationBarCollectionViewController.h
//  NavigationBarGradient
//
//  Created by 司华锋 on 2017/2/22.
//  Copyright © 2017年 HF. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AFNavigationBarCollectionViewController : UICollectionViewController
- (void)followScrollView:(UIView*)scrollableView;
- (void)showNavbar;
- (void)refreshNavbar;
@end
