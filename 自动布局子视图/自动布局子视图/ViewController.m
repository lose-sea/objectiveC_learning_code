//
//  ViewController.m
//  自动布局子视图
//
//  Created by lose_sea on 2026/4/13.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void) viewTest {
    _superView = [[UIView alloc] init];
    _superView.frame = CGRectMake(20, 20, 180, 280);
    _superView.backgroundColor = [UIColor systemCyanColor];
    
    _label01 = [[UILabel alloc] init];
    _label01.frame = CGRectMake(0, 0, 40, 40);
    _label01.text = @"1";
    _label01.backgroundColor = [UIColor orangeColor];
    

    _label02 = [[UILabel alloc] init];
    _label02.frame = CGRectMake(180 - 40, 0, 40, 40);
    _label02.text = @"2";
    _label02.backgroundColor = [UIColor orangeColor];
    
    _label03 = [[UILabel alloc] init];
    _label03.frame = CGRectMake(180 - 40, 280 - 40, 40, 40);
    _label03.text = @"3";
    _label03.backgroundColor = [UIColor orangeColor];
    
    _label04 = [[UILabel alloc] init];
    _label04.frame = CGRectMake(0, 280 - 40, 40, 40);
    _label04.text = @"4";
    _label04.backgroundColor = [UIColor orangeColor];
    
    [_superView addSubview: _label01];  
    [_superView addSubview: _label02];
    [_superView addSubview: _label03];
    [_superView addSubview: _label04];
    
    [self.view addSubview: _superView];
    
    _ViewCenter = [[UIView alloc] init];
    _ViewCenter.frame = CGRectMake(0, 0, _superView.bounds.size.width, 40);
    _ViewCenter.center = CGPointMake(180 / 2, 280 / 2);
    _ViewCenter.backgroundColor = [UIColor orangeColor];
    
    [_superView addSubview: _ViewCenter];
    
    // 自动布局属性设置
    // 子视图跟随父视图按比例拉伸
//    _label01.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    // 距离父视图左侧的距离可以改变
    _label02.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin;
    
    _ViewCenter.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
    
    // 和上边缘和左边缘
    _label03.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleLeftMargin;
    
    _label04.autoresizingMask = UIViewAutoresizingFlexibleTopMargin;
    
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self viewTest];
}

- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
//    [UIView beginAnimations: nil context: nil];
//    [UIView setAnimationDuration: 1];
    
    static BOOL isLarge = NO;
    if (isLarge == NO) {
        [UIView animateWithDuration: 1 animations: ^ {
            self.superView.frame = CGRectMake(10, 10, 300, 400);
        }];
    } else {
        [UIView animateWithDuration: 1 animations: ^ {
            self.superView.frame = CGRectMake(20, 20, 180, 280);
        }];
    }
    
    isLarge = !isLarge;
}

@end
