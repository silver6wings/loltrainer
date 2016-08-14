//
//  ViewController.m
//  loltrainer
//
//  Created by silver6wings on 16/8/13.
//  Copyright © 2016年 silver6wings. All rights reserved.
//

#import "HeroListViewController.h"

@interface HeroListViewController ()
@end

@implementation HeroListViewController

static NSString * CellIdentifier = @"Hero";

- (void)viewDidLoad
{
    [super viewDidLoad];
 
    self.title = @"Heros";
    
    self.tableView.backgroundColor = [UIColor darkGrayColor];
    
    self.tableView.bounces = false;
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;

    self.tableView.separatorColor = [UIColor redColor];
    self.tableView.separatorInset = UIEdgeInsetsMake(0, 0, 0, 0); // 设置端距，这里表示separator离左边和右边均80像素
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark TableViewDelegate

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * showUserInfoCellIdentifier = @"ShowUserInfoCell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:showUserInfoCellIdentifier];
    if (cell == nil)
    {
        // Create a cell to display an ingredient.
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle
                                      reuseIdentifier:showUserInfoCellIdentifier];
    }
    
    cell.textLabel.text = @"卡牌大师";
    cell.detailTextLabel.text = @"崔斯特";
    cell.imageView.frame = CGRectMake(10, 10, 30, 30);
    cell.imageView.image = [UIImage imageNamed:@"TwistedFate"];
    
    if (indexPath.row % 2 == 0)
    {
        cell.backgroundColor = [UIColor grayColor];
    }
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section == 0)
        return 0.0f;
    else
        return 30.0f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60.0f;
}

#pragma mark TableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

@end
