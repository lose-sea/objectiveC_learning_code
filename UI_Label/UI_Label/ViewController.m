//
//  ViewController.m
//  UI_Label
//
//  Created by lose_sea on 2026/4/1.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void) createUILabel {
    // 定义创建一个UILable对象
    UILabel* label = [[UILabel alloc] init];
    
    // 背景的颜色
    self.view.backgroundColor = [UIColor systemCyanColor];
    // 显示文字的赋值
    label.text = @"hello world";
    
    // 设定显示位置
    label.frame = CGRectMake(100, 100, 160, 200); // 距左边, 距上边, 宽, 高
    
    // 背景颜色
    label.backgroundColor = [UIColor whiteColor];

    // 设置文字的大小, 系统默认的大小是12
    label.font = [UIFont systemFontOfSize: 24];
    // 文字颜色
    label.textColor = [UIColor systemCyanColor];
    // 高级属性
    // 设置阴影的颜色
    label.shadowColor = [UIColor greenColor];
    // 设置阴影的偏移量
    label.shadowOffset = CGSizeMake(5, 5);
    // 文字对齐模式       // 默认左对齐
    label.textAlignment = NSTextAlignmentLeft;  // 左对齐
    label.textAlignment = NSTextAlignmentRight;  // 右对齐
    label.textAlignment = NSTextAlignmentCenter;  // 居中对齐
    
    // 设为 `YES` 时，如果文字过长会自动缩小字号以适应宽度。
        label.adjustsFontSizeToFitWidth = YES;
    
    // 设定label文字显示的行数, 默认是 1 行来显示
    // 其他 > 0 的行数, 文字会尽量按照设定行数来显示
    // 如果设为0, 会自动计算需要的行数
    label.numberOfLines = 0;
    
    label.alpha = 0.5;
    
    // 加入到屏幕上
    [self.view addSubview: label];
}

- (void) createUILabel02 {
    self.view.backgroundColor = [UIColor systemBlueColor];
    UILabel* label = [[UILabel alloc] init];
    label.frame = CGRectMake(100, 100, 200, 80);    // 左, 上, 宽, 高
    label.text = @"hello Mobile xxxxxxxxxxx";
    label.backgroundColor = [UIColor whiteColor];

    
    // 文字大小
    label.font = [UIFont systemFontOfSize: 24];
    label.textColor = [UIColor blueColor];
    
    // 设置阴影
    label.shadowColor = [UIColor greenColor];
    label.shadowOffset = CGSizeMake(20, 10);  // 左偏移量, 下偏移量
    [self.view addSubview: label];
    
    // 文字对齐模式
    label.textAlignment = NSTextAlignmentLeft;
    label.textAlignment = NSTextAlignmentRight;
    label.textAlignment = NSTextAlignmentCenter;
    
    // 文字显示行数
    label.numberOfLines = 1;
    
    label.alpha = 0.4;
    
//    设为 `YES` 时，如果文字过长会自动缩小字号以适应宽度。
    label.adjustsFontSizeToFitWidth = YES;
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [self createUILabel];
    [self createUILabel02];
}


@end
