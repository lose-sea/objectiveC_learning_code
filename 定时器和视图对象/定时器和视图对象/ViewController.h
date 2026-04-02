//
//  ViewController.h
//  定时器和视图对象
//
//  Created by lose_sea on 2026/4/2.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    // 声明一个定时器对象
    // 可以在每隔固定时间发送一个消息
    // 通过此消息来调用相应的时间函数
    // 通过此函数可在固定时间段来完成一个根据时间间隔的任务
    NSTimer* _timerView;
}
@end

