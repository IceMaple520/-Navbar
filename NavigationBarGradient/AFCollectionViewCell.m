//
//  AFCollectionViewCell.m
//  NavigationBarGradient
//
//  Created by 司华锋 on 2017/2/23.
//  Copyright © 2017年 HF. All rights reserved.
//

#import "AFCollectionViewCell.h"

@implementation AFCollectionViewCell
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        UILabel *label = [[UILabel alloc] initWithFrame:self.bounds];
        label.text = @"Item Cell";
        label.textAlignment = NSTextAlignmentCenter;
        label.font = [UIFont systemFontOfSize:18];
        [self.contentView addSubview:label];
    }
    return self;
}

@end
