//
//  ViewController.m
//  UI_iOS
//
//  Created by lose_sea on 2026/3/28.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, weak) UILabel *lb;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];    // 设置背景
    
    UILabel* label = [[UILabel alloc] init];        // 创建文字标签
    label.text = @"hello";                  // 设置文字内容
    label.backgroundColor = [UIColor whiteColor];
    label.textColor = [UIColor systemBlueColor];     // 文字颜色
    label.font = [UIFont systemFontOfSize: 24];     // 字体大小
    label.frame = CGRectMake(100, 300, 200, 44);    // 位置, 距左 100, 距上 300, 宽 200, 高 44
    [self.view addSubview: label];      // 加入到页面
    self.lb = label;
    //label.hidden = YES;
    // 加入一个按钮
    UIButton* button = [[UIButton alloc] init];     // 创建按钮
    [button setTitle: @"点我" forState: UIControlStateNormal];    //设置文字, UIControlStateNormal 是正常状态
    [button setTitleColor: [UIColor whiteColor] forState: UIControlStateNormal];
    button.backgroundColor = [UIColor systemRedColor];      // 按钮背景红色
    button.frame = CGRectMake(100, 400, 200, 44);   // 位置在标签下面
    [button addTarget: self action: @selector(buttonTapped) forControlEvents: UIControlEventTouchUpInside]; //绑定点击事件, 点击后调用 buttonTagged 方法     // 手指在按钮内部抬起时触发
    [self.view addSubview: button];
    
}
- (void) buttonTapped {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(50, 50, 200, 200)];
    view.backgroundColor = [UIColor systemCyanColor];
    [self.view addSubview:view];
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    lable.text = @"按钮被按了";
    lable.center = CGPointMake(100, 100);
    [view addSubview:lable];
    self.lb.hidden = YES;
}


@end

