//
//  ViewController.h
//  MyCamera
//
//  Created by luowei on 2018/3/1.
//  Copyright © 2018年 luowei. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MBProgressHUD;

@interface ViewController : UIViewController

@property (nonatomic, strong) IBOutlet UILabel *textLabel;

@property(nonatomic, strong) MBProgressHUD *hud;
@end

