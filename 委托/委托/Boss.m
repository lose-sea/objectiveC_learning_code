//
//  Boss.m
//  委托
//
//  Created by lose_sea on 2026/3/21.
//

#import "Boss.h"


@implementation Boss
- (void) placeOrder {
    if ([self.delegate respondsToSelector: @selector(didReceiveOrder:)]) {
        [self.delegate didReceiveOrder: @"汉堡"];
    }
}
@end
