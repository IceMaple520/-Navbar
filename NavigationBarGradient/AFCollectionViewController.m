//
//  AFCollectionViewController.m
//  NavigationBarGradient
//
//  Created by 司华锋 on 2017/2/23.
//  Copyright © 2017年 HF. All rights reserved.
//

#import "AFCollectionViewController.h"
#import "AFCollectionViewCell.h"
@interface AFCollectionViewController ()<UICollectionViewDelegateFlowLayout>


@end

@implementation AFCollectionViewController

-(id)init{
    UICollectionViewFlowLayout *layout= [[UICollectionViewFlowLayout alloc]init];
    if (self=[super initWithCollectionViewLayout:layout]) {
        
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setUI];
}
- (void)setUI
{
    
    [self setTitle:@"Collection View"];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    [self followScrollView:self.collectionView];
    [self.collectionView registerClass:[AFCollectionViewCell class] forCellWithReuseIdentifier:@"Cell"];
    

}
- (BOOL)scrollViewShouldScrollToTop:(UIScrollView *)scrollView
{
    [self showNavbar];
    return YES;
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 50;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(100, 100);
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{

    AFCollectionViewCell * cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor yellowColor];
    return cell;
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
