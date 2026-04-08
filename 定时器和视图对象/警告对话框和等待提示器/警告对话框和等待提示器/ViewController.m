//
//  ViewController.m
//  警告对话框和等待提示器
//
//  Created by lose_sea on 2026/4/6.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void) createUIAlertControllerAndActivityIndicator {
    self.view.backgroundColor = [UIColor systemCyanColor];
    _alertController = [[UIAlertController alloc] init];
    
    for (int i = 0; i < 2; i++) {
        UIButton* btn = [UIButton buttonWithType: UIButtonTypeSystem];
        btn.frame = CGRectMake(100, 100 + 100 * i, 100, 40);
        
        if (i == 0) {
            [btn setTitle: @"警告对话框" forState: UIControlStateNormal];
        } else {
            [btn setTitle: @"等待提示器" forState: UIControlStateNormal];
        }
        btn.tag = 101 + i;
        
        [btn addTarget: self action: @selector(pressBtn:) forControlEvents: UIControlEventTouchUpInside];
        
        [self.view addSubview: btn];
    }
    
}

- (void) pressBtn: (UIButton*) btn {
    if (btn.tag == 101) {
        // 创建警告对话框
//        title 是弹窗主标题（简短醒目）
//        message 是详细内容（可换行）；
//        preferredStyle 决定弹窗样式：Alert 是中间警告框，ActionSheet 是底部操作列表；
        _alertController = [UIAlertController alertControllerWithTitle: @"警告" message: @"你的手机电量过低" preferredStyle: UIAlertControllerStyleAlert];
        
        // 为警告对话框添加按钮
        UIAlertAction* okAction = [UIAlertAction actionWithTitle: @"OK" style: UIAlertActionStyleDefault  handler: ^(UIAlertAction* _Nonnull action) {
            NSLog(@"取消");
        }];
        [_alertController addAction: okAction];
        UIAlertAction* cacelAction = [UIAlertAction actionWithTitle: @"cacle" style: UIAlertActionStyleCancel  handler: ^ (UIAlertAction* _Nonnull action) {
            
            NSLog(@"OK");
        }];
        [_alertController addAction: cacelAction];
        
        [self presentViewController: _alertController animated: YES completion: nil];
        
    } else if (btn.tag == 102) {
        // 等待提示器
//        _activityIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle: UIActivityIndicatorViewStyleMedium];
        _activityIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle: UIActivityIndicatorViewStyleLarge];
        
        // 宽度和高度是不可以改变的
        _activityIndicator.frame = CGRectMake(100, 300, 100, 80);
        
        // 开始动画
        [_activityIndicator startAnimating];
        // 结束动画
        [_activityIndicator stopAnimating];
        
        
        [self.view addSubview: _activityIndicator];
        
    }
        
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createUIAlertControllerAndActivityIndicator];
}





@end
