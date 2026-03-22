//
//  teacher.h
//  委托
//
//  Created by lose_sea on 2026/3/22.
//

#import <Foundation/Foundation.h>
#import"Say.h"
NS_ASSUME_NONNULL_BEGIN

@interface teacher : NSObject
@property (nonatomic, weak) id<Say> delegate; 
- (void) teach;
@end

NS_ASSUME_NONNULL_END
