//
//  ViewController.m
//  MyCamera
//
//  Created by luowei on 2018/3/1.
//  Copyright © 2018年 luowei. All rights reserved.
//

#import "ViewController.h"
#import "MBProgressHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    self.hud.mode = MBProgressHUDModeText;
    self.hud.offset = CGPointMake(0, -250);
    self.hud.label.text = [NSString stringWithFormat:@"%.2f,%.2f",self.view.center.x,self.view.center.y];
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

    self.textLabel.center = CGPointMake(self.view.center.x, self.view.center.y - 100);
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    CGPoint touchPt = [touches.anyObject locationInView:self.view];
    self.hud.label.text = [NSString stringWithFormat:@"%.2f,%.2f",touchPt.x,touchPt.y];

    [UIView animateWithDuration:0.25 delay:0 usingSpringWithDamping:100 initialSpringVelocity:10 options:UIViewAnimationOptionCurveEaseIn animations:^{
        self.textLabel.center = touchPt;
    } completion:^(BOOL finished) {
        self.textLabel.center = touchPt;
    }];
    
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    [super touchesMoved:touches withEvent:event];
    CGPoint touchPt = [touches.anyObject locationInView:self.view];
    self.hud.label.text = [NSString stringWithFormat:@"%.2f,%.2f",touchPt.x,touchPt.y];
    
    self.textLabel.center = touchPt;
}


@end
