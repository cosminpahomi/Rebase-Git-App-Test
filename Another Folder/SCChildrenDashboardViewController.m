//
//  SCChildrenDashboardViewController.m
//  DayCare-Center
//
//  Created by LJ Kyser on 4/3/14.
//  Copyright (c) 2014 Smart. All rights reserved.
//

#import "SCChildrenDashboardViewController.h"
#import "SCChildrenDashboardTableViewHeader.h"
#import "SCChildDashboardViewController.h"

@implementation SCChildrenDashboardViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    SCChildrenTableView *tableView = [[SCChildrenTableView alloc] init];
    self.tableHeader = [[SCChildrenDashboardTableViewHeader alloc] initWithTableView:tableView.table];
    tableView.table.tableHeaderView = self.tableHeader;
    tableView.delegate = self;
    self.view = tableView;
    self.title = @"Children";
}


#pragma mark - SCchildrenTableViewDelegate

- (void)didSelectStudent:(SCStudent *)student
{
    SCChildDashboardViewController *childDash = [[SCChildDashboardViewController alloc] initWithChild:student];
    [self.navigationController pushViewController:childDash animated:YES];
}

@end
