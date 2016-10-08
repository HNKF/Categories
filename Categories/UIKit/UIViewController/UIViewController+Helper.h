//
//  UIViewController+Helper.h
//  HaoHaoZhu
//
//  Created by 李松 on 15/11/16.
//  Copyright © 2015年 HaoHaoZhu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface UIViewController (Helper)

//找到当前视图控制器
+ (UIViewController *)currentViewController;

//找到当前导航控制器
+ (UINavigationController *)getMainController;

@end
