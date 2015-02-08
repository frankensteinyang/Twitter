//
//  TwitterTabBarViewController.m
//  Twitter
//
//  Created by Frankenstein Yang on 2/7/15.
//  Copyright (c) 2015 Frankenstein Yang. All rights reserved.
//

#import "TwitterTabBarViewController.h"

@implementation TwitterTabBarViewController

/**
 *  当第一次使用这个类的时候调用1次
 */
+ (void)initialize {
    
    [self setupBarButtonItemTheme];
    
}

- (void)viewDidLoad {

    [super viewDidLoad];
    
}

+ (void)setupBarButtonItemTheme {

    UIBarButtonItem *appearance = [UIBarButtonItem appearance];
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
//    textAttrs[UITextAttributeTextColor] = [UIColor orangeColor];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    cell.textLabel.text = @"Testing！";
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 20;
    
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {

    UIViewController *newVC = [[UIViewController alloc] init];
    newVC.view.backgroundColor = [UIColor redColor];
    // 当push这个控制器的时候，就自动隐藏底部的TabBar
//    newVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:newVC animated:YES];
    
}

@end
