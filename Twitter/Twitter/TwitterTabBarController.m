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
    [self addOneChildVC:home title:@"Home" imageName:@"tabbar_home" selectedImageName:@"tabbar_home_selected"];
    
    UIViewController *message = [[UIViewController alloc] init];
    [self addOneChildVC:message title:@"Message" imageName:@"tabbar_message_center" selectedImageName:@"tabbar_message_center_selected"];
    
    UIViewController *discover = [[UIViewController alloc] init];
    [self addOneChildVC:discover title:@"Discover" imageName:@"tabbar_discover" selectedImageName:@"tabbar_discover_selected"];
    
    UIViewController *myInfo = [[UIViewController alloc] init];
    [self addOneChildVC:myInfo title:@"Me" imageName:@"tabbar_profile" selectedImageName:@"tabbar_profile_selected"];
    
}

/**
 *  添加一个子控制器
 *
 *  @param childVC           自控制器对象
 *  @param title             标题
 *  @param imageName         图标
 *  @param selectedImageName 选中的图标
 */
- (void)addOneChildVC:(UIViewController *)childVC title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName {

    childVC.view.backgroundColor = TwitterRandomColor;
    childVC.tabBarItem.title = title;
    childVC.tabBarItem.image = [self imageWithName:imageName];
    UIImage *selectedImage = [self imageWithName:selectedImageName];
    
    if (iOS7) {
        // 声明这张图片用原图（别渲染）
        selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    childVC.tabBarItem.selectedImage = selectedImage;
    [self addChildViewController:childVC];
    
}

- (UIImage *)imageWithName:(NSString *)name {

    UIImage *image = nil;
    if (iOS7) {
        NSString *newName = [name stringByAppendingString:@"_os7"];
        image = [UIImage imageNamed:newName];
    }
    
    if (image == nil) {
        image = [UIImage imageNamed:name];
    }
    
    return image;
    
}

@end
