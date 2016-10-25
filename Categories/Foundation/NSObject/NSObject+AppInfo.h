//
//  NSObject+AppInfo.h
//  Categories
//
//  Created by nidom on 15/9/29.
//  Copyright © 2015年 www.skyfox.org. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (AppInfo)

-(NSString *)version;

-(NSInteger)build;

-(NSString *)identifier;

-(NSString *)currentLanguage;

-(NSString *)deviceModel;

@end
