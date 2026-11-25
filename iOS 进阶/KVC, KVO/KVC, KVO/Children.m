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
        self.lastName = @"";
        
        _cousins = [KVCMutableArray new]; 
    }
    return self;
}

- (NSString*) fullName {
    return [NSString stringWithFormat:@"%@ %@",self.firstName,self.lastName];
}


+ (NSSet*) keyPathsForValuesAffectingFullName {
    return [NSSet setWithObjects: @"firstName", @"lastName", nil];
}

- (NSString*) description {
//    NSLog(@"name: %@, age: %@", self.firstName, self.age);
    return [NSString stringWithFormat: @"Name: %@, age: %lu", self.firstName, self.age];
}
@end
