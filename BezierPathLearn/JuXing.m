//
//  JuXing.m
//  BezierPathLearn
//
//  Created by zwj on 2017/10/9.
//  Copyright © 2017年 zwj. All rights reserved.
//

#import "JuXing.h"

@implementation JuXing

#pragma  mark - 绘制矩形
- (void)drawRect:(CGRect)rect {
    
    UIBezierPath *aPath = [UIBezierPath bezierPathWithRect:CGRectMake(20, 20, 100, 50)];
    aPath.lineWidth = 5;
    aPath.lineCapStyle = kCGLineCapRound;
    aPath.lineJoinStyle = kCGLineCapRound;
    UIColor *color = [UIColor redColor];
    [color set];
    [aPath stroke];
    
}

@end
