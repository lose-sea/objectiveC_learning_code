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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 定义创建一个UILable对象
    UILabel* label = [[UILabel alloc] init];
    
    // 背景的颜色
    self.view.backgroundColor = [UIColor systemCyanColor];
    
    // 显示文字的赋值
    label.text = @"hello world";
    
    // 设定显示位置
    label.frame = CGRectMake(100, 100, 160, 40); // 距左边, 距上边, 宽, 高
    
    // 背景颜色
    label.backgroundColor = [UIColor whiteColor];
    
    // 加入到屏幕上
    [self.view addSubview: label];
    
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
    
    // 设定label文字显示的行数, 默认是 1 行来显示
    // 其他 > 0 的行数, 文字会尽量按照设定行数来显示
    // 如果设为0, 会自动计算需要的行数
    label.numberOfLines = 0;
    
    
}


@end
