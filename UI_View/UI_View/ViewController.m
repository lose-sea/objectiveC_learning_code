//
//  ViewController.m
//  UI_View
//
//  Created by lose_sea on 2026/4/1.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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
    
    // subview是将添加的视图按照添加顺序存储的, (先添加的在最下面), 但是在subviews中索引是靠前的
    // bringSubviewToBack 是将子视图移动到 subviews[0] (subviews 的第一个),
    [self.view sendSubviewToBack: view02];
    // sunviews 管理所有self.view 的子视图的数组
//    UIView* viewFront = self.view.subviews[2];
    
    UIView* viewBack = self.view.subviews[0];
    
    // 从父亲视图删除
    [view02 removeFromSuperview];
    
    if (viewBack == view02) {
        NSLog(@"相等");
    }
}

//-(void)
// 第一次程序加载视图时调用
- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"第一次加载视图");
    // Do any additional setup after loading the view.
//    [self createUI];
//    [self createUIRectBotton];
//    [self createView];
//    [self viewStage];

    
    UIView* view = [[UIView alloc] init];
    view.frame = CGRectMake(100, 100, 100, 200);
    [self.view addSubview: view];
    
    view.backgroundColor = [UIColor orangeColor];
    
    self.view.backgroundColor = [UIColor blueColor];
    
    UIButton* btn = [UIButton buttonWithType: UIButtonTypeRoundedRect];  // rect --> rectangle 矩形的缩写
    btn.frame = CGRectMake(200, 400, 50, 50);
    [btn setTitle: @"button" forState: UIControlStateNormal];
    btn.backgroundColor = [UIColor yellowColor];
    [self.view addSubview: btn];
    
    // 设置按钮事件
    [btn addTarget: self action: @selector(pressBtn) forControlEvents: UIControlEventTouchDown];
}

- (void) pressBtn {
    NSLog(@"btn is pressed");
    self.view.hidden = YES;
}


// 当视图即将调用的时候, 会调用此函数
- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"视图即将显示");
}

- (void)viewDidAppear: (BOOL)animated {
    NSLog(@"视图已经显示");
}

// 当视图即将消失的时候, 会调用此函数
- (void)viewWillDisappear:(BOOL)animated {
    NSLog(@"视图即将消失");
}

// 当视图已经消失的时候, 会调用此函数
- (void)viewDidDisappear:(BOOL)animated {
    NSLog(@"视图已经消失");
}

// 当内存过低时, 会发起警告, 调用此函数
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    NSLog(@"内存过低");
}



@end
