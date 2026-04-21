//
//  VCSecond.h
//  反向传值
//
//  Created by lose_sea on 2026/4/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

// 定义协议
@protocol VCSecondDelegate <NSObject>
// 协议方法
- (void) vcSecond: (id)vcSecond didSendText: (NSString*) text; 

@end

@interface VCSecond : UIViewController
@property (nonatomic) UITextField* textField; 
@property (nonatomic, weak) id<VCSecondDelegate> delegate;
@end

NS_ASSUME_NONNULL_END
