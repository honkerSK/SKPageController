//
//  SKDemo02ViewController.m
//  SKPageControllerDemo
//
//  Created by sunke on 2017/4/5.
//  Copyright © 2017 sunke. All rights reserved.
//

#import "SKDemo02ViewController.h"

@interface SKDemo02ViewController ()

@end

@implementation SKDemo02ViewController

#pragma mark - LazyLoad

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.selectIndex = 2; //默认选择第几个设置（不设置则默认选择第0个）
    
}

#pragma mark - LifeCyle
- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self setUpAllChildViewController];
    
    [self setUpDisplayStyle:^(UIColor *__autoreleasing *titleScrollViewBgColor, UIColor *__autoreleasing *norColor, UIColor *__autoreleasing *selColor, UIColor *__autoreleasing *proColor, UIFont *__autoreleasing *titleFont, CGFloat *titleButtonWidth, BOOL *isShowPregressView, BOOL *isOpenStretch, BOOL *isOpenShade) {
        *titleFont = [UIFont systemFontOfSize:13];
        /*
         以下BOOL值默认都为NO
         */
        *isShowPregressView = YES;                      //是否开启标题下部Pregress指示器
        *isOpenStretch = YES;                           //是否开启指示器拉伸效果
        *isOpenShade = YES;                             //是否开启字体渐变
        
        *titleButtonWidth = 60;                        //有默认值
    }];
    
    
}

#pragma mark - 添加所有子控制器
- (void)setUpAllChildViewController
{
    NSArray *titles = @[@"测试01",@"测试02",@"测试03",@"测试04"];
    for (NSInteger i = 0; i < titles.count; i++) {
        UIViewController *vc = [UIViewController new];
        vc.title = titles[i];
        vc.view.backgroundColor = RandColor; //随机色
        [self addChildViewController:vc];
    }
}


@end
