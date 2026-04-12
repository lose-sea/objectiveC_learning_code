//
//  ViewController.m
//  手动布局视图
//
//  Created by lose_sea on 2026/4/12.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void) UIViewTest {
    // 创建父亲视图
    SuperView* sView = [[SuperView alloc] init];
    sView.frame = CGRectMake(20, 20, 100, 200);
    [sView createSubViews]; 
    sView.backgroundColor = [UIColor systemCyanColor];
    [self.view addSubview: sView];
    sView.tag = 101;
    
    
    UIButton* btn = [UIButton buttonWithType: UIButtonTypeSystem];
    btn.frame = CGRectMake(240, 400, 80, 40);
    [btn setTitle: @"放大" forState: UIControlStateNormal];
    [btn addTarget: self action: @selector(pressLarge) forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview: btn];
    
    
    UIButton* btn02 = [UIButton buttonWithType: UIButtonTypeSystem];
    btn02.frame = CGRectMake(240, 520, 80, 40);
    [btn02 setTitle: @"缩小" forState: UIControlStateNormal];
    [btn02 addTarget: self action: @selector(pressSmall) forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview: btn02];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self UIViewTest];
}

- (void) pressLarge {
    SuperView* sView = [self.view viewWithTag: 101];
    // 废弃
//    // 设置动画
//    [UIView beginAnimations: nil context: nil];
//    // 动画时长
//    [UIView setAnimationDuration: 1];
    
    // 新版
    
//    CGAffineTransformMakeScale(2, 2)       // 放大2倍
//    CGAffineTransformMakeScale(0.5, 0.5)   // 缩小一半
//    CGAffineTransformIdentity              // 恢复原始大小
//    CGAffineTransformMakeRotation(M_PI)    // 旋转180度
    [UIView animateWithDuration: 1 animations: ^ {
        sView.frame = CGRectMake(20, 20, 300, 400);
//        sView.transform = CGAffineTransformMakeScale(2, 2); 
    }];
    
    
    
    
}
- (void) pressSmall {
    SuperView* sView = [self.view viewWithTag: 101];
    // 废弃
//    // 设置动画
//    [UIView beginAnimations: nil context: nil];
//    // 动画时长
//    [UIView setAnimationDuration: 1];
    
    [UIView animateWithDuration: 1 animations: ^ {
        sView.frame = CGRectMake(20, 20, 100, 200);
//        sView.transform = CGAffineTransformMakeScale(0.5, 0.5);
        
    }];
    
    
   
}
@end
