//
//  FKDog.m
//  类和对象
//
//  Created by lose_sea on 2026/3/17.
//

#import "FKDog.h"

@implementation FKDog
- (void) run {
    NSLog(@"I am running!");
}
- (void) jump {
    [self run];
    NSLog(@"I am jumping");
}
@end
