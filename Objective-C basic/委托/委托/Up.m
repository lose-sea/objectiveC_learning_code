//
//  Up.m
//  委托
//
//  Created by lose_sea on 2026/3/22.
//

#import "Up.h"

@implementation Up
- (void) test {
    if ([self.delegate respondsToSelector: @selector(make)]) {
        [self.delegate make];
    }
}

@end
