//
//  YuanXing.m
//  BezierPathLearn
//
//  Created by zwj on 2017/10/9.
//  Copyright © 2017年 zwj. All rights reserved.
//

#import "YuanXing.h"

@implementation YuanXing


- (void)drawRect:(CGRect)rect {

    UIColor *color = [UIColor colorWithRed:0 green:0 blue:0.7 alpha:1];
    [color set]; //设置线条颜色
    
    UIBezierPath *yuan = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(10, 10, 100, 100)];
    yuan.lineWidth = 8.0;
    yuan.lineCapStyle = kCGLineCapRound; //线条拐角
    yuan.lineJoinStyle = kCGLineCapRound; //终点处理
    
    [yuan stroke];
    
}


@end
