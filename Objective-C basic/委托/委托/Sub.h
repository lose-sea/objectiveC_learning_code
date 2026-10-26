//
//  Sub.h
//  委托
//
//  Created by lose_sea on 2026/3/21.
//

#import <Foundation/Foundation.h>
#import"Say.h"

NS_ASSUME_NONNULL_BEGIN

@interface Sub : NSObject <Say>
- (void) say; 
@end

NS_ASSUME_NONNULL_END
