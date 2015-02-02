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

@end
