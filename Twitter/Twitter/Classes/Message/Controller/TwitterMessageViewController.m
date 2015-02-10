//
//  TwitterMessageViewController.m
//  Twitter
//
//  Created by Frankenstein Yang on 2/2/15.
//  Copyright (c) 2015 Frankenstein Yang. All rights reserved.
//

#import "TwitterMessageViewController.h"

@implementation TwitterMessageViewController

- (void)viewDidLoad {

    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"写私信" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    button.titleLabel.font = [UIFont systemFontOfSize:15];
    
//    button.size = [button.currentTitle sizeWithFont:button.titleLabel.font];
//    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    
//    self.navigationItem.rightBarButtonItem = [UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStyleDone target:nil action:nil];
    
    UIBarButtonItem *appearance = [UIBarButtonItem appearance];
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[UITextAttributeTextColor] = [UIColor orangeColor];
    textAttrs[UITextAttributeFont] = [UIFont systemFontOfSize:15];
    [appearance setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    
    NSMutableDictionary *highTextAttrs = [NSMutableDictionary dictionary];
    highTextAttrs[UITextAttributeTextColor] = [UIColor redColor];
    highTextAttrs[UITextAttributeFont] = [UIFont systemFontOfSize:15];
    [appearance setTitleTextAttributes:highTextAttrs forState:UIControlStateHighlighted];
    
}

#pragma mark = TableView data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 10;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    return cell;
    
}

@end
