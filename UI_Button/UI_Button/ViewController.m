//
//  ViewController.m
//  UI_Button
//
//  Created by lose_sea on 2026/4/1.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void) createUIRectButton {
    // 创建一个Button对象, 根据类型创建btn
    // 圆角类型btn, UIButtonTypeRoundedRect
    self.view.backgroundColor = [UIColor blueColor];
    
    UIButton* btn = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    
    // 位置
    btn.frame = CGRectMake(100, 100, 100, 40); // 左 上 宽 高
    
    // 设置按钮的文字内容
    // p1: 字符床类型, 显示到按钮上的文字
    // p2: 设置文字显示的状态类型: UIControlStateNormal --> 正常状态
    [btn setTitle: @"btn" forState: UIControlStateNormal];
    
    // 显示文字类型: UIControlStateHighlighted --> 按下状态
    [btn setTitle: @"btn is pressed" forState: UIControlStateHighlighted];
    
    // 设置按钮文字颜色
    [btn setTitleColor: [UIColor blackColor] forState: UIControlStateHighlighted];
    
    // 设置按钮风格颜色
    // 设置之后, 所有的状态都按照此风格
    [btn setTintColor: [UIColor whiteColor]];
    
    
    // title.Label: UILabel 空间
    // 文字字体大小
    btn.titleLabel.font = [UIFont systemFontOfSize: 18];
    
    // 设置字体背景颜色
    btn.titleLabel.backgroundColor = [UIColor greenColor];
    
    btn.backgroundColor = [UIColor redColor];
    
//    btn.alpha = 0.5;
    [self.view addSubview: btn];
}



// 创建一个可以显示图片的按钮
- (void) createImageBtn {
    // 创建一个自定义类型的Btn
    UIButton* btnImage = [UIButton buttonWithType: UIButtonTypeCustom];
    btnImage.frame = CGRectMake(100, 200, 100, 100);
    UIImage* icon01 = [UIImage imageNamed: @"btn01.png"];
    UIImage* icon02 = [UIImage imageNamed: @"btn02.png"];
    
    // 设置按钮图片
    // p1: 显示的图片对象
    // p2: 控件的状态
    [btnImage setImage: icon01 forState: UIControlStateNormal];
    [btnImage setImage: icon02 forState: UIControlStateHighlighted];
    [self.view addSubview: btnImage];
}



- (void) createButton {
    // 系统类型按钮
    UIButton* btn = [UIButton buttonWithType: UIButtonTypeSystem];
    btn.frame = CGRectMake(100, 400, 100, 100);
    // 自定义类型
    UIButton* btn02 = [UIButton buttonWithType: UIButtonTypeCustom];
    btn02.frame = CGRectMake(150, 200, 100, 100);
    
    btn.backgroundColor = [UIColor systemCyanColor];
    
    [btn setTitle: @"点击我" forState: UIControlStateNormal];
    [btn addTarget: self action: @selector(pressBtn01) forControlEvents: UIControlEventTouchDown];
    [btn setTitle: @"按下" forState: UIControlStateHighlighted];
    
    UIImage* img01 = [UIImage imageNamed: @"btn01.png"];
    UIImage* img02 = [UIImage imageNamed: @"btn02.png"];
    
    
    [btn02 setImage: img01 forState: UIControlStateNormal];
    [btn02 setImage: img02 forState: UIControlStateHighlighted];
    
    [btn setTitleColor: [UIColor greenColor] forState: UIControlStateNormal];
    
    // 设置按钮风格颜色
    [btn setTintColor: [UIColor blackColor]];
    
    // 按钮文字大小
    btn.titleLabel.font = [UIFont systemFontOfSize: 18];

    // 按钮背景颜色
    // 这里不是按钮的颜色,只是包裹按钮文字的Label的颜色
    btn.titleLabel.backgroundColor = [UIColor redColor]; 
    
    [self.view addSubview: btn];
    [self.view addSubview: btn02];
    
}




- (void)btntarget {
    //    // 圆角类型, UIButtonRoundedRect
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

- (void) createButton01 {
    // 系统类型按钮
    UIButton* btn = [UIButton buttonWithType: UIButtonTypeSystem];
    btn.backgroundColor = [UIColor systemCyanColor];
    btn.frame = CGRectMake(100, 200, 200, 40);
    
    [btn setTitle: @"Button" forState: UIControlStateNormal];
    [btn setTitle: @"Button is pressed" forState: UIControlStateHighlighted];
    
    [btn setTitleColor: [UIColor systemOrangeColor] forState: UIControlStateHighlighted];
    [btn setTintColor: [UIColor systemRedColor]];
    
    btn.titleLabel.font = [UIFont systemFontOfSize: 24];
    
    btn.titleLabel.backgroundColor = [UIColor systemGreenColor];
    
    [btn addTarget: self action: @selector(pressBtn01) forControlEvents: UIControlEventTouchUpInside];
    
    btn.tag = 101; 
        
    [self.view addSubview: btn];
}

- (void) createImageButton {
    UIButton* btn = [UIButton buttonWithType: UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 200, 200, 200);
    UIImage* img01 = [UIImage imageNamed: @"btn01.png"];
    UIImage* img02 = [UIImage imageNamed: @"btn02.png"];
    [btn setImage: img01 forState: UIControlStateNormal];
    [btn setImage: img02 forState: UIControlStateHighlighted];
    
    
    [self.view addSubview: btn];
}

- (void) createButton02 {
    UIButton* btn = [UIButton buttonWithType: UIButtonTypeSystem];
    btn.frame = CGRectMake(100, 200, 100, 100);
    btn.backgroundColor = [UIColor systemRedColor];
    [btn setTitle: @"按钮" forState: UIControlStateNormal];
    [btn setTitle: @"按下" forState: UIControlStateHighlighted];
    btn.titleLabel.font = [UIFont systemFontOfSize: 24];
    btn.titleLabel.backgroundColor = [UIColor blueColor];
    
    [btn addTarget: self action: @selector(pressBtn) forControlEvents: UIControlEventTouchUpInside];
    
    [btn setTitleColor: [UIColor redColor] forState: UIControlStateHighlighted]; 
    [self.view addSubview: btn];
}



// 第一次加载时调用
- (void)viewDidLoad {
    [super viewDidLoad];
//    // Do any additional setup after loading the view.
//    
//    [self createButton];
//    [self createUIRectButton];
//    [self createImageBtn];
//    [self createButton01];
//    [self createImageButton];
    [self createButton02];

}


- (void) pressBtn {
    NSLog(@"btn is pressed");
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

@end
