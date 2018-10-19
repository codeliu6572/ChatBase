//
//  ListViewController.m
//  ChatBase
//
//  Created by 刘浩浩 on 2018/10/17.
//  Copyright © 2018年 CodingFire. All rights reserved.
//

#import "ListViewController.h"
#import "CusViewController.h"
#import "WXViewController.h"
#import "CommonViewController.h"
#import "QIpaoViewController.h"

#define k_width self.view.bounds.size.width
#define k_height self.view.bounds.size.height
@interface ListViewController ()<UITableViewDelegate, UITableViewDataSource>
{
    UITableView *listtableView;
}
@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];

    listtableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, k_width, k_height) style:UITableViewStylePlain];
    listtableView.delegate = self;
    listtableView.dataSource = self;
    [self.view addSubview:listtableView];
    [listtableView reloadData];
}

#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    switch (indexPath.row) {
        case 0:
            cell.textLabel.text = @"自定义聊天框";
            break;
        case 1:
            cell.textLabel.text = @"微信聊天框";
            break;
        case 2:
            cell.textLabel.text = @"xx聊天框";
            break;
        case 3:
            cell.textLabel.text = @"聊天气泡";
            break;
        default:
            break;
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        CusViewController *viewVC = [[CusViewController alloc] init];
        [self.navigationController pushViewController:viewVC animated:YES];
    }
    else if (indexPath.row == 1)
    {
        WXViewController *wxVC = [[WXViewController alloc] init];
        [self.navigationController pushViewController:wxVC animated:YES];
    }
    else if (indexPath.row == 2)
    {
        CommonViewController *commonVC = [[CommonViewController alloc] init];
        [self.navigationController pushViewController:commonVC animated:YES];
    }
    else
    {
        QIpaoViewController *qipaoVC = [[QIpaoViewController alloc] init];
        [self.navigationController pushViewController:qipaoVC animated:YES];
    }
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    self.navigationController.navigationBar.barTintColor = [UIColor blackColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
