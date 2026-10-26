//
//  Secretary.m
//  委托
//
//  Created by lose_sea on 2026/3/21.
//

#import "Secretary.h"

@implementation Secretary
- (void) didReceiveOrder: (NSString*) food {
    NSLog(@"秘书收到订单: 去订 %@", food); 
}
@end
