
//
//  GFAddLoadView.m
//  demo
//
//  Created by 李国峰 on 16/7/22.
//  Copyright © 2016年 李国峰. All rights reserved.
//

#import "GFAddLoadView.h"
#import "GFLoadVIew.h"


@interface GFAddLoadView ()
@property (nonatomic,weak)GFLoadVIew *loadView;
@property (nonatomic,assign)float alpher;
@end


@implementation GFAddLoadView


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        GFLoadVIew *loadView = [[GFLoadVIew alloc]initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.width)];
        
        self.loadView = loadView;
        [self addSubview:loadView];
        
    }
    return self;
}



- (void)timer:(float)timer alpha:(float)alpha color:(UIColor *)color lineWidth:(CGFloat)lineWidth{
    [NSTimer scheduledTimerWithTimeInterval:timer target:self selector:@selector(timerView) userInfo:nil repeats:YES];
    self.alpha = alpha ;
    self.loadView.color = color;
    self.loadView.lineWidth = lineWidth;
}

- (void)timerView{
    self.loadView.transform = CGAffineTransformRotate(self.loadView.transform, 0.2);
}

@end
