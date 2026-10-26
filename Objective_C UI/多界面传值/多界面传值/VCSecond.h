//
//  VCSecond.h
//  多界面传值
//
//  Created by lose_sea on 2026/4/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

// 定义代理协议, 视图控制器二的协议
@protocol VCSecondDelegte <NSObject>
// 定义一个协议函数, 改变背景颜色
- (void) changeColor: (UIColor*) color;
@end

@interface VCSecond : UIViewController
// 定义一个代理对象
// 代理对象执行协议
@property (weak, nonatomic) id<VCSecondDelegte> delegate;

@end

NS_ASSUME_NONNULL_END
