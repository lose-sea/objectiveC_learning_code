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

 



// // UILabel
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


// // UIButton

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
   [btn addTarget: self action: @selector(pressBtn01) forControlEvents: UIControlEventTouchUpInside];
   [btn addTarget: self action: @selector(touchDown) forControlEvents: UIControlEventTouchDown];
   
   [self.view addSubview: btn];
   
   UIButton* btn02 = [UIButton buttonWithType: UIButtonTypeRoundedRect];
   btn02.frame = CGRectMake(100, 200, 80, 40);
   [btn02 setTitle: @"Btn02" forState: UIControlStateNormal];
   
   [btn02 addTarget: self action: @selector(pressBtn02) forControlEvents: UIControlEventTouchUpInside];
   [self.view addSubview: btn02];
   
   [btn02 addTarget: self action: @selector(pressBtn:) forControlEvents: UIControlEventTouchUpInside];
   [btn addTarget: self action: @selector(pressBtn:) forControlEvents: UIControlEventTouchUpInside];
   
   // 设置按钮的标记值
   btn.tag = 101;
   btn02.tag = 102;
   
}

- (void) touchDown {
   NSLog(@"touched");
}

- (void) pressBtn02 {
   NSLog(@"Btn02 pressed");
}

- (void) pressBtn01 {
   NSLog(@"press the button");
}

// 带参数
- (void) pressBtn: (UIButton*) btn {
   if (btn.tag == 101) {
       NSLog(@"btn01 is pressed");
   } else if (btn.tag == 102) {
       NSLog(@"btn02 is pressed");
   }
}


// // UIView

- (void) createView {

    // UIView 是iOS视图对象
    // 显示在屏幕上的所有的对象的基础类
    // 所有显示在屏幕上的对象一定继承于UIView
    // UIView 是一个矩形对象, 有背景属性, 可以显示, 有层级关系
    
    // 屏幕的宽 320, 高度 480
    
    
    
    UIView* view = [[UIView alloc] init];
    view.frame = CGRectMake(100, 100, 100, 200);
    
    view.backgroundColor = [UIColor systemBlueColor];
    
    
    // 将新建的视图添加到父亲视图上
    // 1. 将新建的视图显示到屏幕上
    // 2. 将视图作为父亲视图的子视图管理起来
    [self.view addSubview: view];
    
    self.view.backgroundColor = [UIColor systemRedColor];
    // 是否显示视图对象
    // YES: 隐藏
    // NO: 不隐藏
    view.hidden = NO;
    
    //设置透明度
    // 1. alpha = 1  不透明
    // 2. alpha = 0 透明
    // 3. alpha = 0.5  半透明
    view.alpha = 0.5;
    
    
    // 是否显示不透明
    view.opaque = NO;
    
    // 将自己从父亲视图删除
//    [view removeFromSuperview];
}

- (void) viewStage {
    UIView* view01 = [[UIView alloc] init];
    view01.frame = CGRectMake(100, 100, 150, 150);
    view01.backgroundColor = [UIColor blueColor];
    
    UIView* view02 = [[UIView alloc] init];
    view02.frame = CGRectMake(125, 125, 150, 150);
    view02.backgroundColor = [UIColor orangeColor];
    
    UIView* view03 = [[UIView alloc] init];
    view03.frame = CGRectMake(150, 150, 150, 150);
    view03.backgroundColor = [UIColor greenColor];
    
    
    // 哪一个视图先添加到父亲视图上, 就先绘制哪一个视图
    [self.view addSubview: view01];
    [self.view addSubview: view02];
    [self.view addSubview: view03];
    
    
    // 将某一个视图调整到最前面显示
//    [self.view bringSubviewToFront: view01];
//    
//    // 将某一个视图调整到最后面
//    [self.view sendSubviewToBack: view02];
    
    // subview是将添加的视图按照添加顺序存储的, (先添加的在最下面)
    // bringSubviewToBack 是将子视图移动到 subviews[0] (subviews 的第一个),
    [self.view sendSubviewToBack: view02];
    
    // sunviews 管理所有self.view 的子视图的数组
    UIView* viewFront = self.view.subviews[2];
    
    UIView* viewBack = self.view.subviews[0];
    
    // 从父亲视图删除
    [view02 removeFromSuperview];
    
    if (viewBack == view02) {
        NSLog(@"相等");
    }
}

//-(void)

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [self createUI];
//    [self createUIRectBotton];
//    [self createView];
//    [self viewStage];

    
    // 创建一个UIWindow对象
    // 整个程序只有一个UIWindow 对象
    // 在程序基本上表示屏幕窗口
    // UIWindow 也继承于UIView
    // 是一种特殊的UIView
    
    // UIScreen 表示屏幕硬件表示类
    // mainScreen 获取主屏幕设备信息
    // bounds 表示屏幕的宽高值
//    self.window = [[UIWindow alloc] initWithFrame: [UIScreen mainScreen].bounds];
//    
//    self.window.rootViewController = [[UIViewController alloc] init];
//    
//    self.window.backgroundColor = [UIColor blueColor];
//    // 使window有效并显示
//    [self.window makeKeyAndVisible];
    
}


@end
