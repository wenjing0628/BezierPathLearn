//
//  QuXian2.m
//  BezierPathLearn
//
//  Created by zwj on 2017/10/9.
//  Copyright © 2017年 zwj. All rights reserved.
//

#import "QuXian2.h"

@implementation QuXian2

- (void)drawRect:(CGRect)rect {
    UIColor *color = [UIColor yellowColor];
    [color set]; //设置线条颜色
    
    UIBezierPath* aPath = [UIBezierPath bezierPath];
    aPath.lineWidth = 5.0;
    aPath.lineCapStyle = kCGLineCapRound;
    //线条拐角
    aPath.lineJoinStyle = kCGLineCapRound;
    //终点处理
    [aPath moveToPoint:CGPointMake(20, 120)];
    
    [aPath addCurveToPoint:CGPointMake(155, 80) controlPoint1:CGPointMake(60, 0) controlPoint2:CGPointMake(90, 100)];
    
    [aPath stroke];
}

@end
