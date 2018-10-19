//
//  CusRightCell.h
//  ChatBase
//
//  Created by 刘浩浩 on 2018/10/17.
//  Copyright © 2018年 CodingFire. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KUILabel.h"

@interface CusRightCell : UITableViewCell

@property (nonatomic, strong) KUILabel *send;

- (void)refreshCellWithText:(NSString *)text;

@end
