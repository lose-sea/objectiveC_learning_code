//
//  Children.m
//  KVC, KVO
//
//  Created by lose_sea on 2026/11/23.
//

#import "Children.h"

@implementation Children

- (instancetype) init {
    self = [super init];
    if (self) {
        self.firstName = @"Tiffany";
        self.age = 18; 
    }
    return self;
}


- (NSString*) description {
//    NSLog(@"name: %@, age: %@", self.firstName, self.age);
    return [NSString stringWithFormat: @"Name: %@, age: %lu", self.firstName, self.age];
}
@end
