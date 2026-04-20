//
//  MASExampleLayoutGuideViewController.m
//  Masonry iOS Examples
//
//  Created by Jonas Budelmann on 26/11/13.
//  Copyright (c) 2013 Jonas Budelmann. All rights reserved.
//

#import "MASExampleLayoutGuideViewController.h"

@interface MASExampleLayoutGuideViewController ()

@end

@implementation MASExampleLayoutGuideViewController

- (id)init {
    self = [super init];
    if (!self) return nil;

    self.title = @"Layout Guides";

    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];

    UIView *topView = UIView.new;
    topView.backgroundColor = UIColor.greenColor;
    topView.layer.borderColor = UIColor.blackColor.CGColor;
    topView.layer.borderWidth = 2;
    [self.view addSubview:topView];

    UIView *topSubview = UIView.new;
    topSubview.backgroundColor = UIColor.blueColor;
    topSubview.layer.borderColor = UIColor.blackColor.CGColor;
    topSubview.layer.borderWidth = 2;
    [topView addSubview:topSubview];
    
    UIView *bottomView = UIView.new;
    bottomView.backgroundColor = UIColor.redColor;
    bottomView.layer.borderColor = UIColor.blackColor.CGColor;
    bottomView.layer.borderWidth = 2;
    [self.view addSubview:bottomView];

    [topView makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_safeAreaLayoutGuideTop);
        make.left.equalTo(self.view);
        make.right.equalTo(self.view);
        make.height.equalTo(@40);
    }];

    [topSubview makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_safeAreaLayoutGuideTop);
        make.centerX.equalTo(@0);
        make.width.equalTo(@20);
        make.height.equalTo(@20);
    }];
    
    [bottomView makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.view.mas_safeAreaLayoutGuideBottom);
        make.left.equalTo(self.view);
        make.right.equalTo(self.view);
        make.height.equalTo(@40);
    }];
}

@end
