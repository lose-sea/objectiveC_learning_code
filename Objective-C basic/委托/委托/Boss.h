//
//  Boss.h
//  委托
//
//  Created by lose_sea on 2026/3/21.
//

#import <Foundation/Foundation.h>
#import "OrderDelegate.h"
NS_ASSUME_NONNULL_BEGIN

@interface Boss : NSObject
@property (nonatomic, weak) id<OrderDelagate> delegate;
- (void) placeOrder; 
@end

NS_ASSUME_NONNULL_END
