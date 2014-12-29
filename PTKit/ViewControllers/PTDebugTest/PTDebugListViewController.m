//
//  PTDebugListViewController.m
//  PTKit
//
//  Created by LeeHu on 14/12/16.
//  Copyright (c) 2014年 LeeHu. All rights reserved.
//

#import "PTDebugListViewController.h"
#import "PTModuleCollectionViewController.h"

@interface PTDebugListViewController ()

@property (nonatomic, strong) NITableViewActions *actions;

@end

@implementation PTDebugListViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _actions = [[NITableViewActions alloc] initWithTarget:self];
    NSArray *tableContents = @[
                               [self.actions attachToObject:[NITitleCellObject objectWithTitle:@"积木"] navigationBlock:NIPushControllerAction([PTModuleCollectionViewController class])],
                               ];
    
    self.tableView.delegate = [self.actions forwardingTo:self];
    [self setTableData:tableContents];
}

@end