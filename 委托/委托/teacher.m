//
//  teacher.m
//  委托
//
//  Created by lose_sea on 2026/3/22.
//

#import "teacher.h"

@implementation teacher
- (void) teach {
    if ([self.delegate respondsToSelector: @selector(say:)]) {
        [self.delegate say: @"hello xinyan"];
    }
}
@end
