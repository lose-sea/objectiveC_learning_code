//
//  Super.h
//  委托
//
//  Created by lose_sea on 2026/3/21.
//

#import <Foundation/Foundation.h>
#import"Sayhello.h"
NS_ASSUME_NONNULL_BEGIN

@interface Super : NSObject 
@property (nonatomic, weak) id<Sayhello> delegate;
- (void) say; 
@end

NS_ASSUME_NONNULL_END
