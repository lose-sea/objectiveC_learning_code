//
//  Person.h
//  NSSet 基础方法练习
//
//  Created by lose_sea on 2026/3/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
@property (nonatomic, copy) NSString* name;
@property (nonatomic, copy) NSString* pass;
+ (instancetype) shareInstance; 
@end

NS_ASSUME_NONNULL_END
