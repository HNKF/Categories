//
//  ViewController.m
//  Categories
//
//  Created by lisong on 2016/10/8.
//  Copyright © 2016年 lisong. All rights reserved.
//

#import "ViewController.h"
#import "UINavigationItem+Loading.h"
#import "UINavigationItem+Margin.h"
#import "UIButton+Block.h"
#import "UIButton+BackgroundColor.h"
#import "UIButton+CountDown.h"
#import "UIButton+Indicator.h"
#import "UIButton+Badge.h"
#import "UIColor+Gradient.h"
#import "UIView+BlockGesture.h"
#import "UIApplication+ApplicationSize.h"
#import "UIDevice+Hardware.h"
#import "UIImage+Merge.h"
#import "UIImage+RemoteSize.h"
#import "UIImage+Extension.h"
#import "UINavigationController+Transitions.h"
#import "NSBundle+AppIcon.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor redColor];
    button.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:button];
    [button addActionHandler:^{
        
        if (button.selected)
        {
            [button hideIndicator];
        }
        else
        {
            [button showIndicator];
        }
        button.selected = !button.selected;
    }];
    
    [button startTime:2 waitBlock:^(NSInteger remainTime) {
        [button setTitle:[NSString stringWithFormat:@"%ld秒后完成",remainTime] forState:UIControlStateNormal];
    } finishBlock:^{
        [button setTitle:@"完成" forState:UIControlStateNormal];
    }];
    
    [button setBackgroundColor:[UIColor greenColor] forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [button setBackgroundColor:[UIColor yellowColor] forState:UIControlStateSelected];
    [button setBackgroundColor:[UIColor whiteColor] forState:UIControlStateSelected|UIControlStateHighlighted];
    
    UIImageView *view = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 375, 667)];
    view.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:view];
    
    [view addTapActionWithBlock:^(UIGestureRecognizer *gestureRecoginzer) {
        self.view.backgroundColor = [UIColor greenColor];
    }];
    
    
    NSLog(@"%@",[[NSBundle mainBundle] appIconPath]);
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
