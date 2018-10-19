//
//  CusViewController.m
//  ChatBase
//
//  Created by 刘浩浩 on 2018/10/16.
//  Copyright © 2018年 CodingFire. All rights reserved.
//

#import "CusViewController.h"
#import "ChatBaseRight.h"
#import "ChatBaseLeft.h"
#import "KUILabel.h"
#import <Masonry.h>
#import "CusLeftCell.h"
#import "CusRightCell.h"

#define k_width self.view.bounds.size.width
#define k_height self.view.bounds.size.height
#define knavbar_height (kstatusBarHeight + 44)
#define kstatusBarHeight [UIApplication sharedApplication].statusBarFrame.size.height
@interface CusViewController ()<UITableViewDelegate, UITableViewDataSource>
{
    UITableView *listtableView;
    NSArray *contentArray;
}
@end

@implementation CusViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"王大锤";
    contentArray = @[@"我叫你一声你敢答应么？", @"嘿嘿，我叫你一声你敢答应么？", @"行者孙！", @"嘿嘿，爷爷在此！", @"啊，行者孙！", @"爷爷在此", @"怎么没用了，你那葫芦怎么回事？", @"你那公葫芦叫了我这母葫芦不敢用了。嘿嘿，叫啊，你继续叫，俺老孙应着，你快叫", @"行者孙", @"嘿嘿，爷爷在此。", @"啊？", @"银角大王", @"你爷爷在这呢，啊。。。",];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor colorWithRed:1 green:1 blue:1 alpha:0.7],
                                                                      NSFontAttributeName : [UIFont fontWithName:@"Helvetica-Bold" size:17]}];
    self.navigationController.navigationBar.barTintColor = [UIColor blackColor];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIImageView *imgView = [UIImageView new];
    imgView.clipsToBounds = YES;
    imgView.image = [UIImage imageNamed:@"background.jpeg"];
    imgView.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:imgView];
    [imgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.right.bottom.mas_equalTo(0);
    }];
    
    
    UIImageView *inputImgView = [UIImageView new];
    inputImgView.image = [UIImage imageNamed:@"input.jpeg"];
    [imgView addSubview:inputImgView];
    [inputImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.bottom.right.mas_equalTo(0);
        make.height.mas_equalTo(184 / (1320 / k_width));
    }];
    
    
    listtableView = [[UITableView alloc] initWithFrame:CGRectMake(0, knavbar_height, k_width, k_height - knavbar_height - 184 / (1320 / k_width)) style:UITableViewStylePlain];
    listtableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    listtableView.backgroundColor = [UIColor clearColor];
    listtableView.estimatedRowHeight = 100;
    listtableView.showsVerticalScrollIndicator = NO;
    listtableView.delegate = self;
    listtableView.dataSource = self;
    [self.view addSubview:listtableView];
    [listtableView reloadData];
}

#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return contentArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *text = contentArray[indexPath.row];
    if (indexPath.row % 2 == 0) {
        CusLeftCell *cell = [tableView dequeueReusableCellWithIdentifier:@"leftCell"];
        if (!cell) {
            cell = [[CusLeftCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"leftCell"];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        [cell refreshCellWithText:text];
        return cell;
    }
    else
    {
        CusRightCell *cell = [tableView dequeueReusableCellWithIdentifier:@"rightCell"];
        if (!cell) {
            cell = [[CusRightCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"rightCell"];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        [cell refreshCellWithText:text];
        return cell;
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
