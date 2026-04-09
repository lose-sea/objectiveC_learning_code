//
//  ViewController.h
//  UIScrollView
//
//  Created by lose_sea on 2026/4/8.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIScrollViewDelegate> // 当前视图控制器要实现 UIScrollView 的协议函数
// 定义一个滚动视图
@property (nonatomic, strong) UIScrollView* scrollView;
@end

