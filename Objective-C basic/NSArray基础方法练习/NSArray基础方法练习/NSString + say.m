//
//  NSString + say.m
//  NSArray基础方法练习
//
//  Created by lose_sea on 2026/3/24.
//

#import "NSString + say.h"

@implementation NSString (say)
- (void) say: (NSString*) words {
    NSLog(@"%@ say: %@", self, words);
}
@end
