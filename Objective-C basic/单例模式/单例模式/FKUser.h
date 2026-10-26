//
//  FKUser.h
//  单例模式
//
//  Created by lose_sea on 2026/3/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FKUser : NSObject
+ (instancetype) shareInstance; 
@end

NS_ASSUME_NONNULL_END
