//
//  ViewController.m
//  定时器和视图对象
//
//  Created by lose_sea on 2026/4/2.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // 启动定时器
    UIButton* btn = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(100, 100, 80, 40);
    [btn setTitle: @"启动定时器" forState: UIControlStateNormal];
    
    [btn addTarget: self action: @selector(pressStart) forControlEvents: UIControlEventTouchUpInside];
    
    [self.view addSubview: btn];
    
    // 停止定时器
    UIButton* btnStop = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    
    btnStop.frame = CGRectMake(100, 200, 80, 40);
    
    [btnStop setTitle: @"停止定时器" forState: UIControlStateNormal];
    
    [btnStop addTarget: self action: @selector(pressStop) forControlEvents: UIControlEventTouchUpInside];
    
    [self.view addSubview: btnStop];
    
    UIView* view = [[UIView alloc] init];
     
    view.frame = CGRectMake(0, 0, 80, 80);
    view.backgroundColor = [UIColor orangeColor];
    [self.view addSubview: view];
    
    //设置view的标签值
    // 通过父亲视图对象以及view 的标签值可以获得相应的视图对象
    view.tag = 101;
}

- (void) pressStart {
    // 使用NSTimer类方法创建一个定时器并启动这个定时器
    // p1: 每隔多长时间调用定时器函数 (以秒为单位)
    // p2: 表示实现定时器函数的对象 (指针)
    // p3: 定时器函数对象
    // p4: 可以传定时器函数中一个参数, 无参数可以传: nil
    // p5: 定时器是否重复  YES: 重复,  NO: 只完成一次
    // 返回值为一个新建好的定时器对象
    _timerView = [NSTimer scheduledTimerWithTimeInterval: 0.2 target: self selector: @selector(updateTimer:) userInfo: @"小明" repeats: YES];
}

// 定时器函数
// 可以将定时器本身作为参数传入
- (void) updateTimer: (NSTimer*) timer {
    NSLog(@"test!!! name = %@" ,timer.userInfo);
    UIView* view = [self.view viewWithTag: 101];
    view.frame = CGRectMake(view.frame.origin.x + 5, view.frame.origin.y + 5, 80, 80);
}

- (void) pressStop {
    if (_timerView != nil) {
        // 使定时器实效, 停止定时器
        [_timerView invalidate];
    }
}


@end
