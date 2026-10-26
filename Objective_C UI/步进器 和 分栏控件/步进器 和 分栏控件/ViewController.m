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
    
    
    _segControl = [[UISegmentedControl alloc] init];
    
    // 宽度可变， 高度不可变
    _segControl.frame = CGRectMake(10, 200, 300, 40);
    // 添加一个按钮元素
    // 参数一: 按钮选项文字
    // p2: 按钮的索引位置
    // p3: 是否插入动画效果
    [_segControl insertSegmentWithTitle: @"0元" atIndex: 0 animated: NO];
    [_segControl insertSegmentWithTitle: @"5元" atIndex: 1 animated: NO];
    [_segControl insertSegmentWithTitle: @"10元" atIndex: 2 animated: NO];
    
    [_segControl addTarget: self action: @selector(segChange) forControlEvents: UIControlEventValueChanged];
    
    // 当前默认按钮索引设置
    _segControl.selectedSegmentIndex = 0;
    
    
    [self.view addSubview: _stepper];
    [self.view addSubview: _segControl];
}
- (void) UIStepperAndUISegmentControl {
    _stepper = [[UIStepper alloc] init];
    _stepper.frame = CGRectMake(100, 100, 100, 100);
//    _stepper.backgroundColor = [UIColor redColor];
    
    _stepper.minimumValue = 0;
    _stepper.maximumValue =30;
    // _stepper.value --> float类型
    _stepper.value = 15;
    
    _stepper.autorepeat = YES;
    _stepper.continuous = YES;
    
    [_stepper addTarget: self action: @selector(stepChange) forControlEvents: UIControlEventValueChanged];
    
    _segControl = [[UISegmentedControl alloc] init];
    _segControl.backgroundColor = [UIColor systemCyanColor];
    _segControl.frame = CGRectMake(100, 300, 200, 50);
    
    [_segControl insertSegmentWithTitle: @"0元" atIndex: 0 animated: NO];
    [_segControl insertSegmentWithTitle: @"2元" atIndex: 1 animated: NO];
    [_segControl insertSegmentWithTitle: @"4元" atIndex: 2 animated: NO];
    // 设置默认索引
    _segControl.selectedSegmentIndex = 2;
    // 设置滑块的颜色
    _segControl.selectedSegmentTintColor = [UIColor greenColor];
    
//    UISegmentedControl* seg01 = [[UISegmentedControl alloc] init];
//    seg01.frame = CGRectMake(100, 400, 200, 200);
//    seg01.backgroundColor = [UIColor systemGrayColor];
//    [seg01 insertSegmentWithTitle: @"5元" atIndex: 0 animated: NO];
//    [seg01 insertSegmentWithTitle: @"5元" atIndex: 1 animated: NO];
//    [seg01 insertSegmentWithTitle: @"10元" atIndex: 2 animated: NO];
     
    
    [_segControl addTarget: self action: @selector(segChange) forControlEvents: UIControlEventValueChanged];
    
    
    [self.view addSubview: _stepper];
    [self.view addSubview: _segControl];
//    [self.view addSubview: seg01];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [self stepperAndUISegmentControl];
    [self UIStepperAndUISegmentControl];
}
- (void) stepChange {
    NSLog(@"%g", _stepper.value);
}

- (void) segChange {
    // 打印索引
    NSLog(@"%lu", _segControl.selectedSegmentIndex);
    NSString* title = [_segControl titleForSegmentAtIndex: _segControl.selectedSegmentIndex];
    NSLog(@"%@", title); 
}

//- (void) segChange {
//    // 打印索引
//    NSLog(@"%lu", _segControl.selectedSegmentIndex);
//    // 打印标签
//    NSString* title = [_segControl titleForSegmentAtIndex: _segControl.selectedSegmentIndex];
//    NSLog(@"%@", title);
//}
//
//- (void) stepChange {
//    NSLog(@"stepper.value = %g", _stepper.value);
//}


@end
