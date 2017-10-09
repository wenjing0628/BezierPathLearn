//
//  ViewController.m
//  BezierPathLearn
//
//  Created by zwj on 2017/10/9.
//  Copyright © 2017年 zwj. All rights reserved.
//

#import "ViewController.h"
#import "JuXing.h"
#import "YuanXing.h"
#import "TuoYuan.h"
#import "DuoBianXing.h"
#import "HuXian.h"
#import "QuXian1.h"
#import "QuXian2.h"
#import "Hua.h"
#import "CoreGraphics.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0,0,self.view.frame.size.width, self.view.frame.size.height)];
    scrollView.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height * 2);
    [self.view addSubview:scrollView];
    // 矩形
    JuXing *juxing = [[JuXing alloc]initWithFrame:CGRectMake(0, 0, 160, 160)];
    juxing.backgroundColor = [UIColor whiteColor];
    [scrollView addSubview:juxing];
    
    // 圆形
    YuanXing *yuan = [[YuanXing alloc]initWithFrame:CGRectMake(160, 0, 160, 160)];
    yuan.backgroundColor = [UIColor whiteColor];
    [scrollView addSubview:yuan];
    
    // 椭圆
    TuoYuan *tuoyuan = [[TuoYuan alloc]initWithFrame:CGRectMake(0, 160, 160, 160)];
    tuoyuan.backgroundColor = [UIColor whiteColor];
    [scrollView addSubview:tuoyuan];
    
    // 多边形
    DuoBianXing *duobianxing = [[DuoBianXing alloc]initWithFrame:CGRectMake(160, 160, 160, 160)];
    duobianxing.backgroundColor = [UIColor whiteColor];
    [scrollView addSubview:duobianxing];
    
    // 弧线
    HuXian *huxian = [[HuXian alloc]initWithFrame:CGRectMake(0, 320, 160, 160)];
    huxian.backgroundColor = [UIColor whiteColor];
    [scrollView addSubview:huxian];
    
    // 曲线1
    QuXian1 *quxian = [[QuXian1 alloc]initWithFrame:CGRectMake(160, 320, 160, 160)];
    quxian.backgroundColor = [UIColor whiteColor];
    [scrollView addSubview:quxian];
    
    // 曲线2
    QuXian2 *quxian2 = [[QuXian2 alloc]initWithFrame:CGRectMake(0, 480, 160, 160)];
    quxian2.backgroundColor = [UIColor whiteColor];
    [scrollView addSubview:quxian2];
    
    
    // 🌺
    Hua *hua = [[Hua alloc]initWithFrame:CGRectMake(160, 480, 160, 160)];
    hua.backgroundColor = [UIColor whiteColor];
    [scrollView addSubview:hua];
    
   // CoreGraphics
    CoreGraphics *cg = [[CoreGraphics alloc]initWithFrame:CGRectMake(50, 640, 375, 500)];
    cg.backgroundColor = [UIColor whiteColor];
    [scrollView addSubview:cg];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
