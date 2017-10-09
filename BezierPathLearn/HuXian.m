//
//  HuXian.m
//  BezierPathLearn
//
//  Created by zwj on 2017/10/9.
//  Copyright © 2017年 zwj. All rights reserved.
//

#import "HuXian.h"
#define pi 3.14159265359
#define   DEGREES_TO_RADIANS(degrees)  ((pi * degrees)/ 180)

@implementation HuXian


- (void)drawRect:(CGRect)rect {
    
    UIColor *color = [UIColor grayColor];
    [color set]; //设置线条颜色
    
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(80, 80) radius:65 startAngle:DEGREES_TO_RADIANS(90) endAngle:DEGREES_TO_RADIANS(190) clockwise:YES];
    path.lineWidth = 5.0;
    path.lineCapStyle = kCGLineCapRound; //线条拐角
    path.lineJoinStyle = kCGLineCapRound; //终点处理
    [path stroke];
}


@end
