//
//  ViewController.m
//  步进器 和 分栏控件
//
//  Created by lose_sea on 2026/4/5.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void) stepperAndUISegmentControl {
    _stepper = [[UIStepper alloc] init];
    // 设置位置, 宽度不能改变
    _stepper.frame = CGRectMake(100, 100, 100, 40);
    
    // 设置步进器的最小值,最大值
    _stepper.minimumValue = 0;
    _stepper.maximumValue = 100;
    
    // 当前值
    _stepper.value = 30;
    
    // 设置步进值, 没次向前和向后的步伐值 (默认为 1 )
    _stepper.stepValue = 5;
    
    // 是否可以重复响应事件操作
    _stepper.autorepeat = YES;
    
    // 是否将进步器结果通过事件函数响应出来
    _stepper.continuous = YES;
    
    // 添加事件函数
    [_stepper addTarget: self action: @selector(stepChange) forControlEvents: UIControlEventValueChanged];
    
    
    [self.view addSubview: _stepper];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self stepperAndUISegmentControl];
    
}

- (void) stepChange {
    NSLog(@"stepper.value = %g", _stepper.value);
}


@end
