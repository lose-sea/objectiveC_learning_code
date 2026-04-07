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

- (void) createNSTimer {
    
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

- (void) createTimer01 {
    UIButton* btn = [UIButton buttonWithType: UIButtonTypeSystem];
    btn.frame = CGRectMake(100, 200, 200, 80);
    
    [btn setTitle: @"启动定时器" forState: UIControlStateNormal];
    btn.backgroundColor = [UIColor redColor];
    btn.titleLabel.font = [UIFont systemFontOfSize: 24];
    [btn addTarget: self action: @selector(pressStart) forControlEvents: UIControlEventTouchUpInside];
    
    
    UIButton* btn01 = [UIButton buttonWithType: UIButtonTypeSystem];
    btn01.frame = CGRectMake(100, 400, 200, 80);
    [btn01 setTitle: @"停止定时器" forState: UIControlStateNormal];
    btn01.titleLabel.font = [UIFont systemFontOfSize: 24];
    btn01.backgroundColor = [UIColor  blueColor];
    [btn01 addTarget: self action: @selector(pressStop) forControlEvents: UIControlEventTouchUpInside];
    
    UIView* view = [[UIView alloc] init];
    view.frame = CGRectMake(0, 0, 80, 80);
    view.backgroundColor = [UIColor orangeColor];
    view.tag = 101;
    
    [self.view addSubview: view];
    
    [self.view addSubview: btn];
    [self.view addSubview: btn01];
}

- (void) createNSTimer01 {
    UIButton* btn = [UIButton buttonWithType: UIButtonTypeSystem];
    btn.frame = CGRectMake(100, 200, 100, 40);
    [btn setTitle: @"开启" forState: UIControlStateNormal];
    btn.backgroundColor = [UIColor systemBlueColor];
    [btn setTitle: @"anxia" forState: UIControlStateHighlighted];
    [btn setTitleColor: [UIColor blackColor] forState: UIControlStateNormal];
    
    UIView* view = [[UIView alloc] init];
    view.backgroundColor = [UIColor systemOrangeColor];
    view.tag = 101;
    [btn addTarget: self action: @selector(pressStart) forControlEvents: UIControlEventTouchUpInside];
    
    UIButton* btn01 = [[UIButton alloc] init];
    btn01.backgroundColor = [UIColor systemOrangeColor];
    [btn01 setTitle: @"stop" forState: UIControlStateNormal];
    [btn01 setTitle: @"anxia" forState: UIControlStateHighlighted];
    [btn01 setTitleColor: [UIColor blackColor] forState: UIControlStateNormal];
    [btn01 setTitleColor: [UIColor blueColor] forState: UIControlStateHighlighted];
    btn01.frame = CGRectMake(100, 300, 100, 40);
    [btn01 addTarget: self action: @selector(pressStop) forControlEvents: UIControlEventTouchUpInside];
    
    [self.view addSubview: view];
    [self.view addSubview: btn];
    [self.view addSubview: btn01];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [self createTimer01];
    [self createNSTimer01];
}

- (void) pressStart {
    if (_timerView == nil) {
        _timerView = [NSTimer scheduledTimerWithTimeInterval: 0.2 target: self selector: @selector(updateTimer:) userInfo: @"xinyan" repeats: YES];
    }
}

- (void) updateTimer: (NSTimer*) timer {
    NSLog(@"hello, %@", timer.userInfo);
    UIView* view = [self.view viewWithTag: 101];
    view.frame = CGRectMake(view.frame.origin.x + 5, view.frame.origin.y + 5, 60, 60);
}

- (void) pressStop {
    if (_timerView != nil) {
        [_timerView invalidate];
        _timerView = nil;
    }
}

//- (void) pressStart {
//    
//    if (_timerView != nil) {
//        return;
//    }
//    // 使用NSTimer类方法创建一个定时器并启动这个定时器
//    // p1: 每隔多长时间调用定时器函数 (以秒为单位)
//    // p2: 表示实现定时器函数的对象 (指针)
//    // p3: 定时器函数对象
//    // p4: 可以传定时器函数中一个参数, 无参数可以传: nil
//    // p5: 定时器是否重复  YES: 重复,  NO: 只完成一次
//    // 返回值为一个新建好的定时器对象
////    _timerView = [NSTimer scheduledTimerWithTimeInterval: 0.2 target: self selector: @selector(updateTimer:) userInfo: @"小明" repeats: YES];
//    
//    _timerView = [NSTimer scheduledTimerWithTimeInterval: 0.1 target: self selector: @selector(updateTimer:) userInfo: @"xinyan" repeats: YES];
//}
//
// 定时器函数
// 可以将定时器本身作为参数传入
//- (void) updateTimer: (NSTimer*) timer {
////    NSLog(@"test!!! name = %@" ,timer.userInfo);
////    UIView* view = [self.view viewWithTag: 101];
////    view.frame = CGRectMake(view.frame.origin.x + 5, view.frame.origin.y + 5, 80, 80);
//    NSLog(@"hello, %@", _timerView.userInfo);
//    UIView* view = [self.view viewWithTag: 101];
//    view.frame = CGRectMake(view.frame.origin.x + 1, view.frame.origin.y + 2, 80, 80);
//    
//}

//- (void) pressStop {
//    if (_timerView != nil) {
//        // 使定时器实效, 停止定时器    invalidate作废
//        [_timerView invalidate];
//        _timerView = nil;
//        
//    }
//}


@end
