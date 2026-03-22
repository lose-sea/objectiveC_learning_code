//
//  User.h
//  test 方法重写
//
//  Created by lose_sea on 2026/3/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface User : NSObject
@property (nonatomic, copy) NSString* name;
@property (nonatomic, copy) NSString* pass; 
+ (instancetype) shareInstance;
- (void) jump;
- (void) run; 
@end

NS_ASSUME_NONNULL_END
