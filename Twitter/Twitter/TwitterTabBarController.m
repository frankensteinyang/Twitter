//
//  TwitterTabBarController.m
//  Twitter
//
//  Created by Frankenstein Yang on 1/31/15.
//  Copyright (c) 2015 Frankenstein Yang. All rights reserved.
//

#import "TwitterTabBarController.h"

@implementation TwitterTabBarController

- (void)viewDidLoad {

    // 添加子控制器
    UIViewController *home = [[UIViewController alloc] init];
    home.view.backgroundColor = [UIColor yellowColor];
    home.tabBarItem.title = @"首页";
    [self addChildViewController:home];
    
    UIViewController *message = [[UIViewController alloc] init];
    message.view.backgroundColor = [UIColor purpleColor];
    message.tabBarItem.title = @"消息";
    [self addChildViewController:message];
    
    UIViewController *discover = [[UIViewController alloc] init];
    discover.view.backgroundColor = [UIColor blueColor];
    discover.tabBarItem.title = @"发现";
    [self addChildViewController:discover];
    
    UIViewController *myInfo = [[UIViewController alloc] init];
    myInfo.view.backgroundColor = [UIColor brownColor];
    myInfo.tabBarItem.title = @"我";
    [self addChildViewController:myInfo];
    
}

- (void)addOneChildVC:(UIViewController *)childVC title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName {

    childVC.view.backgroundColor = TwitterRandomColor;
    childVC.tabBarItem.title = title;
    childVC.tabBarItem.image = [UIImage imageNamed:imageName];
    childVC.tabBarItem.selectedImage = [UIImage imageNamed:selectedImageName];
    [self addChildViewController:childVC];
    
}

@end
