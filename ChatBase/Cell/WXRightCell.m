//
//  WXRightCell.m
//  ChatBase
//
//  Created by 刘浩浩 on 2018/10/17.
//  Copyright © 2018年 CodingFire. All rights reserved.
//

#import "WXRightCell.h"
#import <Masonry.h>
#import "KUILabel.h"

#define k_width [UIScreen mainScreen].bounds.size.width

@implementation WXRightCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self.backgroundColor = [UIColor clearColor];
    if (self) {
        [self createWXCellView];
    }
    return self;
}

- (void)createWXCellView
{
    _send = [[KUILabel alloc] initWithWXLeftOrRightChat:ChatSend headerImg:@"send.jpeg"];
    _send.text = @"xxxxxx";
    _send.font = [UIFont systemFontOfSize:14];
    _send.textColor = [UIColor blackColor];
    _send.textAlignment = NSTextAlignmentLeft;
    _send.numberOfLines = 0;
    [self addSubview:_send];
    [_send mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(0);
        make.top.mas_equalTo(20);
        make.bottom.mas_equalTo(-20);
        if ([self sizeWithText:_send.text andFont:_send.font] + 25 >= (k_width / 5 * 4)) {
            make.left.mas_equalTo(k_width / 5);
        }
    }];
}

- (void)refreshCellWithText:(NSString *)text
{
    _send.text = text;
    _send.font = [UIFont systemFontOfSize:14];
    _send.textColor = [UIColor blackColor];
    _send.textAlignment = NSTextAlignmentCenter;
    _send.numberOfLines = 0;
    [_send mas_updateConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(0);
        make.top.mas_equalTo(20);
        make.bottom.mas_equalTo(-20);
        if ([self sizeWithText:text andFont:_send.font] + 25 >= (k_width / 5 * 4)) {
            make.left.mas_equalTo(k_width / 5);
            _send.textAlignment = NSTextAlignmentLeft;
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

@end
