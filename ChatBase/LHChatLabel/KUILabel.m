//
//  KUILabel.m
//  ChatBase
//
//  Created by 刘浩浩 on 2018/10/16.
//  Copyright © 2018年 CodingFire. All rights reserved.
//

#import "KUILabel.h"
#import <Masonry.h>
#import "ChatBaseRight.h"
#import "ChatBaseLeft.h"
#import "ChatWXRight.h"
#import "ChatWXLeft.h"
#import "ChartCommon.h"
#import "ChatTailLeft.h"
#import "ChatTailRight.h"

@implementation KUILabel
{
    UILabel *label;
}
- (instancetype)initWithLeftOrRightChat:(ChatSendOrReveive)chats headerImg:(NSString *)imgName
{
    self = [super init];
    if (self) {
        [self createLabel:chats headerImg:imgName];
    }
    return self;
}

- (instancetype)initWithWXLeftOrRightChat:(ChatSendOrReveive)chats headerImg:(NSString *)imgName
{
    self = [super init];
    if (self) {
        [self createWXLabel:chats headerImg:imgName];
    }
    return self;
}

- (instancetype)initWithWXCommonLeftOrRightChat:(ChatSendOrReveive)chats headerImg:(NSString *)imgName
{
    self = [super init];
    if (self) {
        [self createWXCommonLabel:chats headerImg:imgName];
    }
    return self;
}

- (void)createLabel:(ChatSendOrReveive)chats headerImg:(NSString *)imgnName
{
    if (chats == ChatSend) {
        
        UIImageView *headerImgView = [UIImageView new];
        headerImgView.image = [UIImage imageNamed:imgnName];
        [self addSubview:headerImgView];
        [headerImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(40);
            make.height.mas_equalTo(40);
            make.right.mas_equalTo(-20);
            make.bottom.mas_equalTo(0);
        }];
        
        ChatBaseRight *chatBase = [[ChatBaseRight alloc] init];
        chatBase.backgroundColor = [UIColor clearColor];
        [self addSubview:chatBase];
        [chatBase mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(self).offset(0);
            make.right.mas_equalTo(headerImgView.mas_left).offset(-5);
            make.top.mas_equalTo(self).offset(0);
            make.bottom.mas_equalTo(self).offset(0);
        }];
        
        label = [UILabel new];
        [chatBase addSubview:label];
        
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(10);
            make.right.mas_equalTo(-20);
            make.top.mas_equalTo(10);
            make.bottom.mas_equalTo(-10);
        }];
    }
    else
    {
        UIImageView *headerImgView = [UIImageView new];
        headerImgView.image = [UIImage imageNamed:imgnName];
        [self addSubview:headerImgView];
        [headerImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(40);
            make.height.mas_equalTo(40);
            make.left.mas_equalTo(20);
            make.bottom.mas_equalTo(0);
        }];
        
        ChatBaseLeft *chatBase = [[ChatBaseLeft alloc] init];
        chatBase.backgroundColor = [UIColor clearColor];
        [self addSubview:chatBase];
        [chatBase mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(headerImgView.mas_right).offset(5);
            make.right.mas_equalTo(self).offset(0);
            make.top.mas_equalTo(self).offset(0);
            make.bottom.mas_equalTo(self).offset(0);
        }];
        
        label = [UILabel new];
        [chatBase addSubview:label];
        
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(20);
            make.right.mas_equalTo(-10);
            make.top.mas_equalTo(10);
            make.bottom.mas_equalTo(-10);
        }];
    }

}
- (void)createWXLabel:(ChatSendOrReveive)chats headerImg:(NSString *)imgnName
{
    if (chats == ChatSend) {
        
        UIImageView *headerImgView = [UIImageView new];
        headerImgView.image = [UIImage imageNamed:imgnName];
        [self addSubview:headerImgView];
        [headerImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(40);
            make.height.mas_equalTo(40);
            make.right.mas_equalTo(-20);
            make.top.mas_equalTo(0);
        }];
        
        ChatWXRight *chatBase = [[ChatWXRight alloc] init];
        chatBase.backgroundColor = [UIColor clearColor];
        [self addSubview:chatBase];
        [chatBase mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(self).offset(0);
            make.right.mas_equalTo(headerImgView.mas_left).offset(-5);
            make.top.mas_equalTo(self).offset(0);
            make.bottom.mas_equalTo(self).offset(0);
        }];
        
        label = [UILabel new];
        [chatBase addSubview:label];
        
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(10);
            make.right.mas_equalTo(-15);
            make.top.mas_equalTo(10);
            make.bottom.mas_equalTo(-10);
        }];
    }
    else
    {
        UIImageView *headerImgView = [UIImageView new];
        headerImgView.image = [UIImage imageNamed:imgnName];
        [self addSubview:headerImgView];
        [headerImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(40);
            make.height.mas_equalTo(40);
            make.left.mas_equalTo(20);
            make.top.mas_equalTo(0);
        }];
        
        ChatWXLeft *chatBase = [[ChatWXLeft alloc] init];
        chatBase.backgroundColor = [UIColor clearColor];
        [self addSubview:chatBase];
        [chatBase mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(headerImgView.mas_right).offset(5);
            make.right.mas_equalTo(self).offset(0);
            make.top.mas_equalTo(self).offset(0);
            make.bottom.mas_equalTo(self).offset(0);
        }];
        
        label = [UILabel new];
        [chatBase addSubview:label];
        
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(15);
            make.right.mas_equalTo(-10);
            make.top.mas_equalTo(10);
            make.bottom.mas_equalTo(-10);
        }];
    }
    
}

- (void)createWXCommonLabel:(ChatSendOrReveive)chats headerImg:(NSString *)imgnName
{
    if (chats == ChatSend) {
        
        UIImageView *headerImgView = [UIImageView new];
        headerImgView.image = [UIImage imageNamed:imgnName];
        [self addSubview:headerImgView];
        [headerImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(40);
            make.height.mas_equalTo(40);
            make.right.mas_equalTo(-20);
            make.top.mas_equalTo(0);
        }];
        
        ChatTailRight *tailRight = [[ChatTailRight alloc] init];
        tailRight.backgroundColor = [UIColor clearColor];
        [self addSubview:tailRight];
        [tailRight mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(5);
            make.height.mas_equalTo(40);
            make.top.mas_equalTo(0);
            make.right.equalTo(headerImgView.mas_left).offset(-5);
        }];
        
        ChartCommon *chatBase = [[ChartCommon alloc] init];
        chatBase.backgroundColor = [UIColor clearColor];
        [self addSubview:chatBase];
        [chatBase mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(self).offset(0);
            make.right.mas_equalTo(tailRight.mas_left).offset(0);
            make.top.mas_equalTo(self).offset(0);
            make.bottom.mas_equalTo(self).offset(0);
        }];
        
        label = [UILabel new];
        [chatBase addSubview:label];
        
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(10);
            make.right.mas_equalTo(-10);
            make.top.mas_equalTo(10);
            make.bottom.mas_equalTo(-10);
        }];
    }
    else
    {
        UIImageView *headerImgView = [UIImageView new];
        headerImgView.image = [UIImage imageNamed:imgnName];
        [self addSubview:headerImgView];
        [headerImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(40);
            make.height.mas_equalTo(40);
            make.left.mas_equalTo(20);
            make.top.mas_equalTo(0);
        }];
        
        ChatTailLeft *tailLeft = [[ChatTailLeft alloc] init];
        tailLeft.backgroundColor = [UIColor clearColor];
        [self addSubview:tailLeft];
        [tailLeft mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(5);
            make.height.mas_equalTo(40);
            make.top.mas_equalTo(0);
            make.left.equalTo(headerImgView.mas_right).offset(5);
        }];
        
        ChartCommon *chatBase = [[ChartCommon alloc] init];
        chatBase.backgroundColor = [UIColor clearColor];
        [self addSubview:chatBase];
        [chatBase mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(self).offset(0);
            make.left.mas_equalTo(tailLeft.mas_right).offset(0);
            make.top.mas_equalTo(self).offset(0);
            make.bottom.mas_equalTo(self).offset(0);
        }];
        label = [UILabel new];
        [chatBase addSubview:label];
        
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(10);
            make.right.mas_equalTo(-10);
            make.top.mas_equalTo(10);
            make.bottom.mas_equalTo(-10);
        }];
    }
    
}


- (void)setText:(NSString *)text
{
    _text = text;
    label.text =_text;
}

- (void)setFont:(UIFont *)font
{
    _font = font;
    label.font =_font;
}

- (void)setTextColor:(UIColor *)textColor
{
    _textColor = textColor;
    label.textColor = _textColor;
}

- (void)setTextAlignment:(NSTextAlignment)textAlignment
{
    _textAlignment = textAlignment;
    label.textAlignment = _textAlignment;
}

- (void)setNumberOfLines:(NSInteger)numberOfLines
{
    _numberOfLines = numberOfLines;
    label.numberOfLines = _numberOfLines;
}

@end
