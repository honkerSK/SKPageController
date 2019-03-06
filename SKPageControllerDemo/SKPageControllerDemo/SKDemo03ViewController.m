//
//  SKDemo03ViewController.m
//  SKPageControllerDemo
//
//  Created by sunke on 2017/4/5.
//  Copyright © 2017 sunke. All rights reserved.
//

#import "SKDemo03ViewController.h"

@interface SKDemo03ViewController ()

@end

@implementation SKDemo03ViewController

#pragma mark - LazyLoad

#pragma mark - LifeCyle
- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self setUpAllChildViewController];
    
}

#pragma mark - 添加所有子控制器
- (void)setUpAllChildViewController
{
    NSArray *titles = @[@"测试01",@"测试02",@"测试03"];
    for (NSInteger i = 0; i < titles.count; i++) {
        UIViewController *vc = [UIViewController new];
        vc.title = titles[i];
        vc.view.backgroundColor = RandColor; //随机色
        [self addChildViewController:vc];
    }
}

@end
