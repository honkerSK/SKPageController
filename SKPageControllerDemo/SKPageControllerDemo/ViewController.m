//
//  ViewController.m
//  SKPageControllerDemo
//
//  Created by sunke on 2017/4/5.
//  Copyright © 2017 sunke. All rights reserved.
//

#import "ViewController.h"

#import "SKDemo01ViewController.h"
#import "SKDemo02ViewController.h"
#import "SKDemo03ViewController.h"
#import "SKDemo04ViewController.h"
#import "SKDemo05ViewController.h"


@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
/* tableView */
@property (strong , nonatomic)UITableView *tableView;

@end

@implementation ViewController


- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.frame = self.view.bounds;
        CGFloat tabEY = ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) : NO) ? 88 : 64;
        _tableView.contentInset = UIEdgeInsetsMake(tabEY, 0, 0, 0);
        _tableView.scrollIndicatorInsets = _tableView.contentInset;
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"DisplayViewCell"];
        
        [self.view addSubview:_tableView];
    }
    return _tableView;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpBase];
}

#pragma mark - baseSetting
- (void)setUpBase
{
    self.title = @"SKPageController";
    self.tableView.backgroundColor = self.view.backgroundColor;
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    self.tableView.rowHeight = 50;
    
    self.tableView.tableFooterView = [[UIView alloc]initWithFrame:CGRectZero]; //去掉多余的下划线
}


#pragma mark - <UITableViewDataSource>
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DisplayViewCell" forIndexPath:indexPath];
    NSArray *array = @[@"🦄",@"🐣",@"🐳",@"🐬",@"🕊"];
    cell.textLabel.font = [UIFont systemFontOfSize:16];
    cell.textLabel.text = [NSString stringWithFormat:@"%@第%zd种类型",array[indexPath.row],indexPath.row];
    return cell;
}

#pragma mark - <UITableViewDelegate>
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    switch (indexPath.row) {
        case 0:
        {
            SKDemo01ViewController *skDemo = [SKDemo01ViewController new];
            [self.navigationController pushViewController:skDemo animated:YES];
        }
            break;
        case 1:{
            SKDemo02ViewController *skDemo = [SKDemo02ViewController new];
            [self.navigationController pushViewController:skDemo animated:YES];
        }
            break;
        case 2:{
            SKDemo03ViewController *skDemo = [SKDemo03ViewController new];
            [self.navigationController pushViewController:skDemo animated:YES];
        }
            break;
        case 3:{
            SKDemo04ViewController *skDemo = [SKDemo04ViewController new];
            [self.navigationController pushViewController:skDemo animated:YES];
        }
            break;
        case 4:{
            SKDemo05ViewController *skDemo = [SKDemo05ViewController new];
            [self.navigationController pushViewController:skDemo animated:YES];
        }
            break;
            
        default:
            break;
    }
    
    
}

@end
