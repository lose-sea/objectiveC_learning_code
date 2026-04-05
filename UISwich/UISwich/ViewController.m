//
//  ViewController.m
//  UISwich
//
//  Created by lose_sea on 2026/4/2.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void) createSwitch {
    // 创建一个开关对象
    // 继承于UIKit的
    _mySwitch = [[UISwitch alloc] init];
    
    // 苹果官方的控件的位置设置
    // 位置 x, y 可以改变
    // 宽度和高度无法改变
    self.view.backgroundColor = [UIColor yellowColor];
     
    _mySwitch.frame = CGRectMake(100, 100, 0, 0);
    
    // 开关状态设置
    // YES: 开启状态
    // NO: 关闭状态
    _mySwitch.on = YES;
    
    // 也可以使用 set 函数
    [_mySwitch setOn: YES];
    
    // 设置开关状态
    // p1: 状态设置
    // p2: 是否使用开启动画效果
    [_mySwitch setOn: YES animated: YES];
    
    // 设置开启状态的风格颜色
    [_mySwitch setOnTintColor: [UIColor systemRedColor]];
    
    // 开关圆点的颜色
    [_mySwitch setThumbTintColor: [UIColor systemGreenColor]];
    
    // 开关整体风格的颜色     关闭状态下开关的风格颜色 (已经弃用)
    [_mySwitch setTintColor: [UIColor systemBlueColor]];
    
    
    
    // 向开关控件添加事件函数
    // 1. 函数实现对象
    // 2. 函数对象
    // 3. 事件响应时的事件类型 UIControlEvenValueChanged: 状态发生变化的时候触发函数
    [_mySwitch addTarget: self action:@selector(swChange:) forControlEvents: UIControlEventValueChanged];
    [self.view addSubview: _mySwitch];
}

- (void) createSwitch01 {
    _mySwitch = [[UISwitch alloc] init];
    _mySwitch.frame = CGRectMake(100, 200, 100, 100);
    
    // 开关背景颜色
    _mySwitch.backgroundColor = [UIColor blueColor];
    
    
    _mySwitch.on = YES;
    
    [_mySwitch setOn: NO animated: YES];
    
    // 开启状态风格颜色
    [_mySwitch setOnTintColor: [UIColor orangeColor]];
    
    // 开关圆点颜色
    [_mySwitch setThumbTintColor: [UIColor redColor]];
    
    [_mySwitch setTintColor: [UIColor yellowColor]];
    
    // 事件响应
    [_mySwitch addTarget: self action: @selector(swChange:) forControlEvents: UIControlEventValueChanged];
    
    
    [self.view addSubview: _mySwitch];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createSwitch01];

    
    
}

// 这里的状态是指操作之后开关的状态
//- (void) swChange: (UISwitch*) sw {
//    if (sw.on == YES) {
//        NSLog(@"开关被打开");
//    } else {
//        NSLog(@"开关被关闭");
//    }
//    NSLog(@"开关状态发生变化");
//}

- (void) swChange: (UISwitch*) sw {
    if (sw.on == YES) {
        NSLog(@"开关被打开");
    } else {
        NSLog(@"开关被关闭");
    }
    NSLog(@"开关状态发生变化");
}

@end
