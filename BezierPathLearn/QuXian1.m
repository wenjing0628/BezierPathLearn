//
//  QuXian1.m
//  BezierPathLearn
//
//  Created by zwj on 2017/10/9.
//  Copyright © 2017年 zwj. All rights reserved.
//

#import "QuXian1.h"

@implementation QuXian1

- (void)drawRect:(CGRect)rect { UIColor *color = [UIColor redColor]; [color set]; //设置线条颜色
    UIBezierPath* aPath = [UIBezierPath bezierPath];
    aPath.lineWidth = 5.0;
    aPath.lineCapStyle = kCGLineCapRound;
    //线条拐角
    aPath.lineJoinStyle = kCGLineCapRound;
    //终点处理
    [aPath moveToPoint:CGPointMake(20, 120)];
    
    [aPath addQuadCurveToPoint:CGPointMake(120, 120) controlPoint:CGPointMake(40, 0)];
    
    [aPath stroke];
}
    

@end
