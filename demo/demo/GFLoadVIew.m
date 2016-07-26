//
//  GFLoadVIew.m
//  demo
//
//  Created by 李国峰 on 16/7/22.
//  Copyright © 2016年 李国峰. All rights reserved.
//

#import "GFLoadVIew.h"

@implementation GFLoadVIew
- (void)drawRect:(CGRect)rect {
    
    
    CGFloat rabius1 = rect.size.width/2;
    CGFloat starAgle1 = 0;
    CGFloat endAngle1 = 2*M_PI;
    CGPoint point1 = CGPointMake(rect.size.width/2,rect.size.width/2);
    UIBezierPath *path1 = [UIBezierPath bezierPathWithArcCenter:point1 radius:rabius1 startAngle:starAgle1 endAngle:endAngle1 clockwise:YES];
    
    CAShapeLayer *layer1 = [[CAShapeLayer alloc]init];
    layer1.path = path1.CGPath;
    layer1.fillColor = [UIColor clearColor].CGColor;
    layer1.strokeColor = [UIColor grayColor].CGColor;
    layer1.lineWidth = self.lineWidth;
    [self.layer addSublayer:layer1];
    
    
    CGFloat rabius = rect.size.width/2 ;
    CGFloat starAngle = 2*M_PI *0.8;
    CGPoint point = CGPointMake(rect.size.width/2, rect.size.width/2);
    NSLog(@"%f----%f",rect.size.height/2,rect.size.width/2);
    CGFloat endAngle = 2*M_PI;
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:point radius:rabius startAngle:starAngle endAngle:endAngle clockwise:YES];
    CAShapeLayer *layer = [[CAShapeLayer alloc]init];
    layer.path = path.CGPath;
    
    layer.strokeColor = self.color.CGColor;
    layer.fillColor = [UIColor clearColor].CGColor;
    layer.lineWidth = self.lineWidth;
    [self.layer addSublayer:layer];
}

-(void)layoutSubviews{
    [super layoutSubviews];
    self.backgroundColor = [UIColor clearColor];
}

@end
