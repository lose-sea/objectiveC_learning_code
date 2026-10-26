//
//  Up.h
//  委托
//
//  Created by lose_sea on 2026/3/22.
//

#import <Foundation/Foundation.h>
#import "Make.h"
NS_ASSUME_NONNULL_BEGIN

@interface Up : NSObject
@property (nonatomic, weak) id<Make> delegate; 
- (void) test; 
@end

NS_ASSUME_NONNULL_END
