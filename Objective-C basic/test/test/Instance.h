//
//  instance.h
//  test
//
//  Created by lose_sea on 2026/3/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Instance : NSObject
@property (nonatomic, copy) NSString* name; 
+ (instancetype) shareInstance;
@end

NS_ASSUME_NONNULL_END
