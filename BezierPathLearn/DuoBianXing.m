//
//  DuoBianXing.m
//  BezierPathLearn
//
//  Created by zwj on 2017/10/9.
//  Copyright © 2017年 zwj. All rights reserved.
//

#import "DuoBianXing.h"

@implementation DuoBianXing


- (void)drawRect:(CGRect)rect {
    UIColor *color = [UIColor colorWithRed:0 green:0.7 blue:0 alpha:1];
    [color set];
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    path.lineWidth = 5.0f;
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineCapRound;
    
    // 起点
    
    [path moveToPoint:CGPointMake(80, 0)];
    
    [path addLineToPoint:CGPointMake(160, 40)];
    [path addLineToPoint:CGPointMake(140, 140)];
    [path addLineToPoint:CGPointMake(40, 140)];
    [path addLineToPoint:CGPointMake(0, 40)];
    [path addLineToPoint:CGPointMake(70, 60)];
    [path closePath];//第五条线通过调用closePath方法得到的
    
    //根据坐标点连线
    [path stroke];
    [path fill];
}


@end
