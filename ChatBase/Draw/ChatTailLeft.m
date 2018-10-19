//
//  ChatTailLeft.m
//  ChatBase
//
//  Created by 刘浩浩 on 2018/10/18.
//  Copyright © 2018年 CodingFire. All rights reserved.
//

#import "ChatTailLeft.h"

#define k_width self.bounds.size.width
#define k_height self.bounds.size.height
#define k_radius 5

@implementation ChatTailLeft

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [UIColor colorWithRed:0.64f green:0.90f blue:0.39f alpha:1.00f].CGColor);
    
    CGContextMoveToPoint(context, k_width, k_height / 2 - k_radius);
    CGContextAddLineToPoint(context, 0, k_height / 2);
    CGContextAddLineToPoint(context, k_width, k_height / 2 + k_radius);
    CGContextClosePath(context);
    CGContextDrawPath(context, kCGPathFill);
}

@end
