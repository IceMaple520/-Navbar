//
//  AFScrollowViewController.m
//  NavigationBarGradient
//
//  Created by 司华锋 on 2017/2/22.
//  Copyright © 2017年 HF. All rights reserved.
//

#import "AFScrollowViewController.h"
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@interface AFScrollowViewController ()<UIScrollViewDelegate>
@property (nonatomic,strong) UIScrollView *scrollView;
@end

@implementation AFScrollowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setUI];
}
- (void)setUI
{
    [self setTitle:@"Scroll View"];
    _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.width)];
    [self.view addSubview:_scrollView];
    
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 80, 320, 40)];
    [label setText:@"My content"];
    [label setTextAlignment:NSTextAlignmentCenter];
    [label setFont:[UIFont fontWithName:@"Futura" size:24]];
    [label setTextColor:[UIColor whiteColor]];
    [label setBackgroundColor:[UIColor clearColor]];
    [self.scrollView addSubview:label];
    [self.view setBackgroundColor:UIColorFromRGB(0x08245d)];
    [self.scrollView setBackgroundColor:UIColorFromRGB(0x08245d)];
    
    [self.scrollView setContentSize:CGSizeMake(320, 840)];
    if ([self.navigationController.navigationBar respondsToSelector:@selector(setBarTintColor:)]) {
        [self.navigationController.navigationBar setBarTintColor:UIColorFromRGB(0x18fa2)];
    }
    [self followScrollView:self.scrollView];
    [self.scrollView setDelegate:self];

    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:nil action:nil];
    
}
- (BOOL)scrollViewShouldScrollToTop:(UIScrollView *)scrollView
{
    [self showNavbar];
    return YES;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
