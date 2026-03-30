//
//  ViewController.m
//  UILable
//
//  Created by lose_sea on 2026/3/30.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void) createUIRectBotton {
    // 圆角类型, UIButtonRoundedRect
    UIButton* btn = [UIButton buttonWithType: UIButtonTypeRoundedRect];
     
    btn.frame = CGRectMake(100, 100, 80, 40);
    
    // 按钮标题
    [btn setTitle: @"按钮" forState: UIControlStateNormal];
    
    // 向按钮添加事件函数
    // p1: "谁" 来实现事件函数, 实现的对象就是谁
    // p2: @selctor(pressBtn): 函数对象, 当按钮满足p3事件类型时, 系统调用函数
    // p3: UIControlEvent: 事件处理函数模型
    // UIControlEventTouchUpInside: 当手指离开屏幕时并且手指的位置在按钮范围内触发事件函数
    // UIControlEventTouchUpOutside: 当手指离开屏幕时并且手指的位置在按钮范围外触发事件函数 (按下在范围内, 松开在范围外)
    // UIControlEventTouchDown: 当手指触碰到按钮上时候触发
    // UIControlEventTouchDown: 当手指多次连续触碰到按钮 (双击)
    [btn addTarget: self action: @selector(pressBtn: ) forControlEvents: UIControlEventTouchUpInside];
    [btn addTarget: self action: @selector(touchDown:) forControlEvents: UIControlEventTouchDown];
    
    [self.view addSubview: btn];
    
    UIButton* btn02 = [[UIButton alloc] init];
    btn02.frame = CGRectMake(100, 100, 80, 40);
    [btn setTitle: @"Btn02" forState: UIControlStateNormal];
    
    [btn02 addTarget: self action: @selector(press)]
    
    
}
 
- (void) touchDown: (UIButton*) btn {
    NSLog(@"touched");
}

- (void) pressBtn: (UIButton*) btn {
    NSLog(@"Btn pressed");
}

- (void) pressBtn {
    NSLog(@"press the button");
}



- (void) createUI {
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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [self createUI];
    [self createUIRectBotton];
}


@end
