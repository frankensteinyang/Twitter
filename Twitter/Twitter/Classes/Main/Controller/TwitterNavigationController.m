//
//  TwitterNavigationController.m
//  Twitter
//
//  Created by Frankenstein Yang on 2/9/15.
//  Copyright (c) 2015 Frankenstein Yang. All rights reserved.
//

#import "TwitterNavigationController.h"

@implementation TwitterNavigationController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {

    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
    
}

- (void)viewDidLoad {

    [super viewDidLoad];
    
}

/**
 *  能拦截所有push进来的子控制器
 */
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {

    if (self.viewControllers.count > 0) { // 如果现在push的不是栈底控制器（最先push进来的那个控制器）
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
    
}

@end
