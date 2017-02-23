//
//  AFTableViewController.m
//  NavigationBarGradient
//
//  Created by 司华锋 on 2017/2/23.
//  Copyright © 2017年 HF. All rights reserved.
//

#import "AFTableViewController.h"
#import "AFWebViewController.h"

@interface AFTableViewController ()<UITableViewDelegate,UITableViewDataSource,UISearchBarDelegate>
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) NSArray *dataArray;


@end

@implementation AFTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    [self setUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}
- (void)setUI
{
    self.automaticallyAdjustsScrollViewInsets = NO;
    [self setTitle:@"Table View"];
    self.dataArray = @[@"Awesome content", @"Great content", @"Amazing content", @"Ludicrous content", @"Awesome content", @"Great content", @"Amazing content", @"Ludicrous content", @"Awesome content", @"Great content", @"Amazing content", @"Ludicrous content", @"Awesome content", @"Great content", @"Amazing content", @"Ludicrous content"];
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    [self.view addSubview:_tableView];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    [self followScrollView:self.tableView];
    
    
    
    
}
- (void)searchBarTextDidEndEditing:(UISearchBar *)searchBar
{
    [self performSelector:@selector(showNavbar) withObject:nil afterDelay:0.5f];
}
- (BOOL)scrollViewShouldScrollToTop:(UIScrollView *)scrollView
{
    [self showNavbar];
    return YES;
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return YES;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _dataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    cell.textLabel.text = _dataArray[indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.navigationController pushViewController:[[AFWebViewController alloc] init] animated:YES];
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
