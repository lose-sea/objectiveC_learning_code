//
//  ViewController.h
//  UISlider & UIProgressView
//
//  Created by lose_sea on 2026/4/2.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    // 进度条
    // 一般用来表示下载或视频播放的进度
    UIProgressView* _progressView;
    
    // 滑动条的定义
    // 一般用来进行调整音乐视频的播放进度
    UISlider* _slider;
}
@property (retain, nonatomic) UIProgressView* pView;
@property (retain, nonatomic) UISlider* slider;

@end

