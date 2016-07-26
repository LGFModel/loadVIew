//
//  ViewController.m
//  demo
//
//  Created by 李国峰 on 16/7/22.
//  Copyright © 2016年 李国峰. All rights reserved.
//

#import "ViewController.h"
#import "GFAddLoadView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    


}
- (IBAction)loading:(id)sender {
    
    GFAddLoadView *add = [[GFAddLoadView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];

    [add timer:0.02 alpha:1 color:[UIColor greenColor] lineWidth:5];
    
    [self.view addSubview:add];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
