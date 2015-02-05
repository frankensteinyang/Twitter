//
//  TwitterHomeViewController.m
//  Twitter
//
//  Created by Frankenstein Yang on 2/3/15.
//  Copyright (c) 2015 Frankenstein Yang. All rights reserved.
//

#import "TwitterHomeViewController.h"

@implementation TwitterHomeViewController

- (id)initWithStyle:(UITableViewStyle)style {

    self = [super initWithStyle:style];
    if (self) {
        
    }
    return self;
    
}

- (void)viewDidLoad {

    [super viewDidLoad];
    
}

#pragma mark - TableView data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 20;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"Frankenstein! %d", indexPath.row];
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    UIViewController *newVC = [[UIViewController alloc] init];
    newVC.view.backgroundColor = [UIColor redColor];
    [self.navigationController pushViewController:newVC animated:YES];

}

@end
