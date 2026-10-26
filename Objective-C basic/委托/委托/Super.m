//
//  Super.m
//  委托
//
//  Created by lose_sea on 2026/3/21.
//

#import "Super.h"


@implementation Super
- (void) say {
    if ([self.delegate respondsToSelector: @selector(sayhello)]) {
        [self.delegate sayhello];
    }
}
@end
