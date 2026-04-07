//
//  ViewController.h
//  警告对话框和等待提示器
//
//  Created by lose_sea on 2026/4/6.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

// 警告对话框
@property (nonatomic, strong) UIAlertView* alertView;
// 等待提示器
// 当下载,或加载比较时, 可以显示此控件
@property (nonatomic, strong) UIActivityIndicatorView* activityIndicator;

@end

