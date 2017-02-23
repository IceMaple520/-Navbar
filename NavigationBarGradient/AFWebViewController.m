//
//  AMWebViewController.m
//  NavigationBarGradient
//
//  Created by 司华锋 on 2017/2/22.
//  Copyright © 2017年 HF. All rights reserved.
//

#import "AFWebViewController.h"

@interface AFWebViewController ()<UIScrollViewDelegate>

@property (nonatomic,strong) UIWebView *webView;

@end

@implementation AFWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setUI];
}
- (void)setUI
{
    _webView = [[UIWebView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:_webView];
    
    [self setTitle:@"Web View"];
    self.webView.backgroundColor = [UIColor colorWithRed:0.93 green:0.93 blue:0.93 alpha:1];
    self.view.backgroundColor = [UIColor colorWithRed:0.93 green:0.93 blue:0.93 alpha:1];

    NSMutableString *html = [@"<html><head></head><body style='background-color:#eee; color:#444; font-family: Futura;'>" mutableCopy];
    
    [html appendString:@"<h1>The content</h1><p>Long content here</p><p>Some other content here</p>"];
    [html appendString:@"<h1>Other content</h1><p>Long content here</p><p>Some other content here</p>"];
    [html appendString:@"<h1>My content</h1><p>Long content here</p><p>Some other content here</p>"];
    [html appendString:@"<h1>My content</h1><p>Long content here</p><p>Some other content here</p>"];
    [html appendString:@"<h1>My content</h1><p>Long content here</p><p>Some other content here</p>"];
    [html appendString:@"</body></html>"];
    [self.webView loadHTMLString:html baseURL:nil];
    [self followScrollView:self.webView];
    
    self.webView.scrollView.delegate = self;
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
