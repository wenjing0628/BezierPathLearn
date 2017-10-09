//
//  TuoYuan.m
//  BezierPathLearn
//
//  Created by zwj on 2017/10/9.
//  Copyright © 2017年 zwj. All rights reserved.
//

#import "TuoYuan.h"

@implementation TuoYuan

- (void)drawRect:(CGRect)rect {
    
    UIColor *color = [UIColor orangeColor];
    [color set]; //设置线条颜色
    
    UIBezierPath *tuoyuan = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(10, 10, 100, 50)];
    tuoyuan.lineWidth = 8.0;
    tuoyuan.lineCapStyle = kCGLineCapRound; //线条拐角
    tuoyuan.lineJoinStyle = kCGLineCapRound; //终点处理
    
    [tuoyuan stroke];
    
}

@end
