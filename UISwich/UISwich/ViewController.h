//
//  ViewController.h
//  UISwich
//
//  Created by lose_sea on 2026/4/2.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    // 定义一个开关控件
    // 可以进行状态的改变
    // 开, 关 两种状态可以切换
    // 苹果官方的控件都定义在UIKit 框架中
    UISwitch* _mySwitch;
}
@property (retain, nonatomic) UISwitch* mySwitch;

@end

