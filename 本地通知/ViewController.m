//
//  ViewController.m
//  本地通知
//
//  Created by asus on 16/2/16.
//  Copyright (c) 2016年 asus. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //创建本地通知
    UILocalNotification *note = [[UILocalNotification alloc] init];
    
    note.fireDate = [NSDate dateWithTimeIntervalSinceNow:10];  //10s后通知
    note.timeZone = [NSTimeZone defaultTimeZone];
    note.alertBody = @"这是通知内容";
    
    
    //注册通知
    UIApplication *app = [UIApplication sharedApplication];
    [app scheduleLocalNotification:note];
    
}

@end
