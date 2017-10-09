//
//  CoreGraphics.m
//  BezierPathLearn
//
//  Created by zwj on 2017/10/9.
//  Copyright © 2017年 zwj. All rights reserved.
//

#import "CoreGraphics.h"

@implementation CoreGraphics

- (void)drawRect:(CGRect)rect{
    [self drawRectangle];
    [self drawCircleAtx:160 Y:230];
    [self drawEllipseAtX:70 Y:160];
    [self drawEllipseAtX:200 Y:160];
    [self drawTriangle];
    [self drawQuadCurve];
    [self drawQuadCurve2];
    [self drawCurve2];
    
    [self drawdrawRadialGradientWithRect:CGRectMake(120, 510, 60, 60)];
    [self drawingLinearGradientWithStartPoint:CGPointMake(20, 20) endPoint:CGPointMake(80, 80)];
    [self test];
}
// 矩形
- (void)drawRectangle{
    CGRect rectangle = CGRectMake(80, 400, 160, 60);
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextAddRect(ctx, rectangle);
    CGContextSetFillColorWithColor(ctx, [UIColor redColor].CGColor);
    CGContextFillPath(ctx);
    
}

// 画圆圈
- (void)drawCircleAtx:(float)x Y:(float)y{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextAddArc(ctx, x, y, 150, 0, 2 * M_PI, 1);
    CGContextSetShadowWithColor(ctx, CGSizeMake(10, 10), 10.0f, [UIColor grayColor].CGColor);
    CGContextSetFillColorWithColor(ctx, [UIColor yellowColor].CGColor);
    CGContextFillPath(ctx);
    
}

// 绘制椭圆
- (void)drawEllipseAtX:(float)x Y:(float)y {
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGRect rectangle = CGRectMake(x, y, 60, 30);
    CGContextAddEllipseInRect(ctx, rectangle);
    CGContextSetFillColorWithColor(ctx, [UIColor redColor].CGColor);
    CGContextFillPath(ctx);
}

//三角形
- (void)drawTriangle {
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextBeginPath(ctx);
    
    CGContextMoveToPoint(ctx, 160, 40);
    CGContextAddLineToPoint(ctx, 190, 80);
    CGContextAddLineToPoint(ctx, 130, 80);
    CGContextClosePath(ctx);
    
    CGContextSetFillColorWithColor(ctx, [UIColor blackColor].CGColor);
    CGContextFillPath(ctx);
}
//曲线1
- (void)drawQuadCurve {
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextBeginPath(ctx);
    
    CGContextMoveToPoint(ctx, 50, 130);
    CGContextAddQuadCurveToPoint(ctx, 0, 100, 25, 170);
    
    CGContextSetLineWidth(ctx, 10);
    CGContextSetStrokeColorWithColor(ctx, [UIColor brownColor].CGColor);
    CGContextStrokePath(ctx);
}
- (void)drawQuadCurve2{
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextBeginPath(ctx);
    
    CGContextMoveToPoint(ctx, 270, 130);
    CGContextAddQuadCurveToPoint(ctx, 320, 100, 295, 170);
    
    CGContextSetLineWidth(ctx, 10);
    CGContextSetStrokeColorWithColor(ctx, [UIColor brownColor].CGColor);
    CGContextStrokePath(ctx);
}

//第二种曲线
- (void)drawCurve2{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextBeginPath(ctx);
    
    CGContextMoveToPoint(ctx, 170, 170);
    CGContextAddCurveToPoint(ctx, 160, 250, 230, 250, 160, 290);
    
    CGContextSetLineWidth(ctx, 10);
    CGContextSetStrokeColorWithColor(ctx, [UIColor brownColor].CGColor);
    CGContextStrokePath(ctx);
    
}
// 最底下的小半圆

- (void)drawdrawRadialGradientWithRect:(CGRect)rect
{
    
    //先创造一个CGGradientRef,颜色是白,黑,location分别是0,1
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    NSArray* gradientColors = [NSArray arrayWithObjects:
                               (id)[UIColor whiteColor].CGColor,
                               (id)[UIColor blackColor].CGColor, nil];
    CGFloat gradientLocations[] = {0, 1};
    
    CGGradientRef gradient = CGGradientCreateWithColors(colorSpace,
                                                        (__bridge CFArrayRef)gradientColors,
                                                        gradientLocations);
    CGPoint startCenter = CGPointMake(CGRectGetMidX(rect), CGRectGetMidY(rect));
    CGFloat radius = MAX(CGRectGetHeight(rect), CGRectGetWidth(rect));
    
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextDrawRadialGradient(context, gradient,
                                startCenter, 0,
                                startCenter, radius,
                                0);
    
    CGGradientRelease(gradient);
    CGColorSpaceRelease(colorSpace);
}

// 左上角的紫色三角形
- (void)drawingLinearGradientWithStartPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint
{
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    NSArray* gradientColors = [NSArray arrayWithObjects:
                               (id)[UIColor whiteColor].CGColor,
                               (id)[UIColor purpleColor].CGColor, nil];
    CGFloat gradientLocations[] = {0, 1};
    
    CGGradientRef gradient = CGGradientCreateWithColors(colorSpace,
                                                        (__bridge CFArrayRef)gradientColors,
                                                        gradientLocations);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    CGContextDrawLinearGradient(context, gradient, startPoint, endPoint,0);
    CGContextRestoreGState(context);
    CGGradientRelease(gradient);
    CGColorSpaceRelease(colorSpace);
}
// 眼睛上面的三角形

-(void)test{
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    NSArray* gradientColors = [NSArray arrayWithObjects:
                               (id)[UIColor whiteColor].CGColor,
                               (id)[UIColor purpleColor].CGColor, nil];
    CGFloat gradientLocations[] = {0, 1};
    
    CGGradientRef gradient = CGGradientCreateWithColors(colorSpace,
                                                        (__bridge CFArrayRef)gradientColors,
                                                        gradientLocations);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    CGContextMoveToPoint(context, 100, 100);
    CGContextAddArc(context, 100, 100, 60, 1.04 , 2.09 , 0);
    CGContextClosePath(context);
    CGContextClip(context);
    
    
    CGPoint endshine;
    CGPoint startshine;
    startshine = CGPointMake(100 + 60 * cosf( 1.57 ),100+ 60 * sinf( 1.57 ));
    endshine = CGPointMake(100,100);
    CGContextDrawLinearGradient(context,gradient , startshine, endshine, kCGGradientDrawsAfterEndLocation);
    CGContextRestoreGState(context);
}
@end
