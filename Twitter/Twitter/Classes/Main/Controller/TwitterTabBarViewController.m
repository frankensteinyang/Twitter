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

+ (void)setupBarButtonItemTheme {

    UIBarButtonItem *appearance = [UIBarButtonItem appearance];
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
//    textAttrs[UITextAttributeTextColor] = [UIColor orangeColor];
    
}

@end
