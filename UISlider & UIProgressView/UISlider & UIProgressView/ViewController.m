//
//  ViewController.m
//  UISlider & UIProgressView
//
//  Created by lose_sea on 2026/4/2.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void) createProgressViewAndSlider {
    
    self.view.backgroundColor = [UIColor systemCyanColor];
    
    // 进度条
    _progressView= [[UIProgressView alloc] init];
    // 进度条的高度是不能变化的
    _progressView.frame = CGRectMake(100, 100, 200, 40);
//    _progressView.backgroundColor = [UIColor yellowColor];
    
    // 进度条的颜色风格
    _progressView.progressTintColor = [UIColor redColor];
    // 未完成部分的颜色
    _progressView.trackTintColor = [UIColor greenColor];
    
    // 进度条的进度值
    // 范围: 0 ~ 1
    _progressView.progress = 0.5;

    // 进度条的风格特征
    _progressView.progressViewStyle = UIProgressViewStyleDefault;

    
    // 滑动条
    _slider = [[UISlider alloc] init];
    // 高度不可以改变
    _slider.frame = CGRectMake(100, 200, 100, 40);
//    _slider.backgroundColor = [UIColor blueColor];
    
    // 设置滑动条的最大最小值 (可以为负值) float 类型
    _slider.minimumValue = 0;
    _slider.maximumValue = 100;
    
    // 滑块的位置
    _slider.value = 30;
    
    // 滑块左侧颜色
    _slider.minimumTrackTintColor = [UIColor redColor];
    // 右侧的颜色
    _slider.maximumTrackTintColor = [UIColor blackColor];
    
    // 滑块的颜色
    _slider.thumbTintColor = [UIColor yellowColor];
    
    // 响应事件
    [_slider addTarget: self action: @selector(pressSlider) forControlEvents: UIControlEventValueChanged];
    
    
    
    [self.view addSubview: _progressView];
    [self.view addSubview: _slider];
}

- (void) createProgressViewAndSlider01 {
    _progressView = [[UIProgressView alloc] init];
    _progressView.frame = CGRectMake(100, 100, 200, 100);
    _progressView.progress = 0.6;
    
    _progressView.progressTintColor = [UIColor redColor];
    _progressView.trackTintColor = [UIColor blueColor];
    // 设置进度条的风格特征
    _progressView.progressViewStyle = UIProgressViewStyleDefault;
    
    // 滑动条
    _slider = [[UISlider alloc] init];
    _slider.frame = CGRectMake(100, 300, 200, 100);
    _slider.minimumValue = 0;
    _slider.maximumValue = 100;
    
    _slider.value = 40;
    _slider.thumbTintColor = [UIColor redColor];
    _slider.tintColor = [UIColor systemBrownColor];
    _slider.minimumTrackTintColor = [UIColor systemBlueColor];
    _slider.maximumTrackTintColor = [UIColor systemGrayColor];
    
    [_slider addTarget: self action: @selector(pressSlider) forControlEvents: UIControlEventValueChanged];
    
    
    [self.view addSubview: _slider];
    [self.view addSubview: _progressView];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [self createProgressViewAndSlider];
    [self createProgressViewAndSlider01];
}

- (void) pressSlider {
    _progressView.progress = _slider.value / (_slider.maximumValue - _slider.minimumValue);
    NSLog(@"Slider.value = %f", _slider.value);
}


@end
