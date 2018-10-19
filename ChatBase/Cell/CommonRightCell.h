//
//  CommonRightCell.h
//  ChatBase
//
//  Created by 刘浩浩 on 2018/10/18.
//  Copyright © 2018年 CodingFire. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KUILabel.h"

@interface CommonRightCell : UITableViewCell

@property (nonatomic, strong) KUILabel *send;

- (void)refreshCellWithText:(NSString *)text;

@end
