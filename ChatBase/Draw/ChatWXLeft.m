//
//  ChartWXLeft.m
//  ChatBase
//
//  Created by 刘浩浩 on 2018/10/17.
//  Copyright © 2018年 CodingFire. All rights reserved.
//

#import "ChatWXLeft.h"

#define k_width self.bounds.size.width
#define k_height self.bounds.size.height
#define k_radius 5

@implementation ChatWXLeft

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [UIColor colorWithRed:0.64f green:0.90f blue:0.39f alpha:1.00f].CGColor);
    
    CGContextMoveToPoint(context, k_radius * 2, k_height);
    CGContextAddArcToPoint(context, k_radius, k_height, k_radius, k_height - k_radius, k_radius); //左下
    CGContextAddLineToPoint(context, k_radius, 25);
    CGContextAddLineToPoint(context, 0, 20);
    CGContextAddLineToPoint(context, k_radius, 15);
    CGContextAddArcToPoint(context, k_radius, 0, k_radius * 2, 0, k_radius); //左上
    CGContextAddArcToPoint(context, k_width, 0, k_width, k_radius, k_radius); //右上
    CGContextAddArcToPoint(context, k_width, k_height, k_width - k_radius, k_height, k_radius); //右下
    
    CGContextClosePath(context);
    CGContextDrawPath(context, kCGPathFill);
}

@end
