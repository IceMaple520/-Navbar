//
//  ViewController.m
//  NavigationBarGradient
//
//  Created by 司华锋 on 2017/2/22.
//  Copyright © 2017年 HF. All rights reserved.
//

#import "ViewController.h"
#import "AFScrollowViewController.h"
#import "AFWebViewController.h"
#import "AFTableViewController.h"
#import "AFCollectionViewController.h"


#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setUI];
}
- (void)setUI
{
    self.automaticallyAdjustsScrollViewInsets = NO;
    [self.navigationController.navigationBar setTranslucent:NO];
    [self setTitle:@"Demo"];
    if ([self.navigationController.navigationBar respondsToSelector:@selector(setBarTintColor:)]) {
        [self.navigationController.navigationBar setBarTintColor:UIColorFromRGB(0x184fa2)];
    }
    if (([[[UIDevice currentDevice] systemVersion] compare:@"7.0" options:NSNumericSearch] == NSOrderedAscending)) {
        // Silence depracation warnings
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleBlackOpaque];
#pragma clang diagnostic pop
    }
    
    NSArray *titleArray = @[@"Scroll View",@"Table View",@"Web View",@"Collection View"];
    for (NSInteger i = 0; i < titleArray.count; i++) {
        UIButton *btn = [[UIButton alloc] init];
        btn.frame = CGRectMake(0, 100 + i * (44 + 20), self.view.frame.size.width, 44);
        btn.backgroundColor = UIColorFromRGB(0xfa1456);
        [btn setTitle:titleArray[i] forState:UIControlStateNormal];
        btn.tag = 1000 + i;
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
    }
    
    
}
- (void)btnClick:(UIButton *)sender
{
    switch (sender.tag - 1000) {
        case 0:
        {
            AFScrollowViewController *vc = [[AFScrollowViewController alloc] init];
            
            [self.navigationController pushViewController:vc animated:YES];
            
            break;
        }
        case 1:
        {
            [self.navigationController pushViewController:[[AFTableViewController alloc] init] animated:YES];

         break;
        }
        case 2:
        {
            AFWebViewController *vc = [[AFWebViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
            
            break;
        }
        case 3:
        {
            [self.navigationController pushViewController:[[AFCollectionViewController alloc] init] animated:YES];

            break;
        }
        default:
            break;
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
