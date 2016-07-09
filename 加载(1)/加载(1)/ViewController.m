//
//  ViewController.m
//  加载(1)
//
//  Created by 李国峰 on 16/7/8.
//  Copyright © 2016年 李国峰. All rights reserved.
//

#import "ViewController.h"
#import "loadView.h"


@interface ViewController ()
@property (nonatomic,weak)loadView *vc;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    
}
- (IBAction)log:(id)sender {
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(tranformView) userInfo:nil repeats:YES];
    CGFloat scWidth = [UIScreen mainScreen].bounds.size.width;
    CGFloat scHeight = [ UIScreen mainScreen].bounds.size.height;
    
    
    
    loadView *vc = [[loadView alloc]initWithFrame:CGRectMake(scWidth / 2 - 25, scHeight / 2 -25, 50, 50)];
    self.vc = vc;
    
    UIView *view1 = [[UIView alloc]initWithFrame:self.view.bounds];
    view1.backgroundColor = [UIColor blackColor];
    view1.alpha = 0.5;
    
    [view1 addSubview:vc];
    [self.view addSubview:view1];
    
    // 这里 没有什么实际用处  就是延迟操作  模拟网络延迟
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [timer invalidate];
        
        [vc removeFromSuperview];
        
        UIView *view = [[UIView alloc]initWithFrame:CGRectMake(scWidth / 2 - 100, scHeight / 2 -25, 200, 100)];
        
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, view.frame.size.width, view.frame.size.height)];
        
        label.text = @"登录成功";
        
        label.textColor = [UIColor whiteColor];
        
        label.textAlignment = NSTextAlignmentCenter;
        
        [view addSubview:label];
        
        view.backgroundColor = [UIColor blackColor];
        
        [view1 addSubview:view];
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            
            [view1 removeFromSuperview];
            
        });
    });
}

- (void)tranformView{
    
    self.vc.transform = CGAffineTransformRotate(self.vc.transform, 0.11);
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
