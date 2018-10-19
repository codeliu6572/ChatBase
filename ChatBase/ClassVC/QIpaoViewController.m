//
//  QIpaoViewController.m
//  ChatBase
//
//  Created by 刘浩浩 on 2018/10/18.
//  Copyright © 2018年 CodingFire. All rights reserved.
//

#import "QIpaoViewController.h"
#import "KUILabel.h"
#import <Masonry.h>

#define k_width self.view.bounds.size.width

@interface QIpaoViewController ()

@end

@implementation QIpaoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"所有气泡";
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor colorWithRed:1 green:1 blue:1 alpha:0.7],
                                                                      NSFontAttributeName : [UIFont fontWithName:@"Helvetica-Bold" size:17]}];
    self.navigationController.navigationBar.barTintColor = [UIColor blackColor];
    
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
    
    
    KUILabel *baseLeft = [[KUILabel alloc] initWithLeftOrRightChat:ChatReceive headerImg:@"receive.jpeg"];
    baseLeft.text = @"你好！";
    baseLeft.font = [UIFont systemFontOfSize:14];
    baseLeft.textAlignment = NSTextAlignmentLeft;
    baseLeft.textColor = [UIColor blackColor];
    baseLeft.numberOfLines = 0;
    [self.view addSubview:baseLeft];
    [baseLeft mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.top.mas_equalTo(80);
        if ([self sizeWithText:baseLeft.text andFont:baseLeft.font] + 25 >= (k_width / 5 * 4)) {
            make.right.mas_equalTo(-k_width / 5);
        }
    }];

    KUILabel *baseRight = [[KUILabel alloc] initWithLeftOrRightChat:ChatSend headerImg:@"send.jpeg"];
    baseRight.text = @"床前明月光，疑是地上霜。举头望明月，低头思故乡。";
    baseRight.font = [UIFont systemFontOfSize:14];
    baseRight.textAlignment = NSTextAlignmentLeft;
    baseRight.textColor = [UIColor blackColor];
    baseRight.numberOfLines = 0;
    [self.view addSubview:baseRight];
    [baseRight mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(baseLeft.mas_bottom).offset(20);
        make.right.mas_equalTo(0);
        if ([self sizeWithText:baseRight.text andFont:baseRight.font] + 25 >= (k_width / 5 * 4)) {
            make.left.mas_equalTo(k_width / 5);
        }
    }];
    
    KUILabel *wxLeft = [[KUILabel alloc] initWithWXLeftOrRightChat:ChatReceive headerImg:@"receive.jpeg"];
    wxLeft.text = @"床前明月光，疑是地上霜。举头望明月，低头思故乡。床前明月光，疑是地上霜。举头望明月，低头思故乡。";
    wxLeft.font = [UIFont systemFontOfSize:14];
    wxLeft.textAlignment = NSTextAlignmentLeft;
    wxLeft.textColor = [UIColor blackColor];
    wxLeft.numberOfLines = 0;
    [self.view addSubview:wxLeft];
    [wxLeft mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.top.equalTo(baseRight.mas_bottom).offset(20);
        if ([self sizeWithText:wxLeft.text andFont:wxLeft.font] + 25 >= (k_width / 5 * 4)) {
            make.right.mas_equalTo(-k_width / 5);
        }
    }];

    KUILabel *wxRight = [[KUILabel alloc] initWithWXLeftOrRightChat:ChatSend headerImg:@"send.jpeg"];
    wxRight.text = @"床前明月光，疑是地上霜。举头望明月，低头思故乡。床前明月光，疑是地上霜。举头望明月，低头思故乡。床前明月光，疑是地上霜。举头望明月，低头思故乡。床前明月光，疑是地上霜。举头望明月，低头思故乡。";
    wxRight.font = [UIFont systemFontOfSize:14];
    wxRight.textAlignment = NSTextAlignmentLeft;
    wxRight.textColor = [UIColor blackColor];
    wxRight.numberOfLines = 0;
    [self.view addSubview:wxRight];
    [wxRight mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(wxLeft.mas_bottom).offset(20);
        make.right.mas_equalTo(0);
        if ([self sizeWithText:wxRight.text andFont:wxRight.font] + 25 >= (k_width / 5 * 4)) {
            make.left.mas_equalTo(k_width / 5);
        }
    }];
    
    KUILabel *wxCommonLeft = [[KUILabel alloc] initWithWXCommonLeftOrRightChat:ChatReceive headerImg:@"receive.jpeg"];
    wxCommonLeft.text = @"How are you?";
    wxCommonLeft.font = [UIFont systemFontOfSize:14];
    wxCommonLeft.textAlignment = NSTextAlignmentLeft;
    wxCommonLeft.textColor = [UIColor blackColor];
    wxCommonLeft.numberOfLines = 0;
    [self.view addSubview:wxCommonLeft];
    [wxCommonLeft mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.top.equalTo(wxRight.mas_bottom).offset(20);
        if ([self sizeWithText:wxCommonLeft.text andFont:wxCommonLeft.font] + 25 >= (k_width / 5 * 4)) {
            make.right.mas_equalTo(-k_width / 5);
        }
    }];
    
    KUILabel *wxCommonRight = [[KUILabel alloc] initWithWXCommonLeftOrRightChat:ChatSend headerImg:@"send.jpeg"];
    wxCommonRight.text = @"Fine thank you!";
    wxCommonRight.font = [UIFont systemFontOfSize:14];
    wxCommonRight.textAlignment = NSTextAlignmentLeft;
    wxCommonRight.textColor = [UIColor blackColor];
    wxCommonRight.numberOfLines = 0;
    [self.view addSubview:wxCommonRight];
    [wxCommonRight mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(wxCommonLeft.mas_bottom).offset(20);
        make.right.mas_equalTo(0);
        if ([self sizeWithText:wxCommonRight.text andFont:wxCommonRight.font] + 25 >= (k_width / 5 * 4)) {
            make.left.mas_equalTo(k_width / 5);
        }
    }];
}

- (CGSize)sizeWithText:(NSString*)text andFont:(UIFont*)font constrainedToSize:(CGSize)size{
    CGSize rect=CGSizeZero;
    rect = [text boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil].size;
    return rect;
}

- (CGFloat)sizeWithText:(NSString*)text andFont:(UIFont*)font{
    return [self sizeWithText:text andFont:font constrainedToSize:CGSizeZero].width;
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
