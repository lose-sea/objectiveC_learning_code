//
//  KVCMutableArray.m
//  KVC, KVO
//
//  Created by lose_sea on 2026/11/23.
//

#import "KVCMutableArray.h"

@implementation KVCMutableArray


- (instancetype) init {
    self = [super init];
    if (self) {
        self.array = [NSMutableArray new];
    }
    return self;
}

- (NSUInteger) countOfArray {
    return self.array.count;
}


@end
