//
//  DataManager.h
//  单例传值
//
//  Created by lose_sea on 2026/4/29.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DataManager : UIViewController
// 获取单例的方法
+ (instancetype) shareManager;

// 要共享的数据
@property (nonatomic, copy) NSString* shareText;
@end

NS_ASSUME_NONNULL_END
