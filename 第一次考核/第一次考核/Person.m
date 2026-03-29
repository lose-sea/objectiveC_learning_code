//
//  People.m
//  test111
//
//  Created by lose_sea on 2026/3/26.
//

#import "Person.h"

@implementation Person
- (instancetype) initWithName:(NSString *)Name andAge:(int)Age {
    if (self = [super init]) {
        self.name = [Name copy];
        self.age = Age;
    }
    return self;
}
- (NSString *)descriptionName {
    return [NSString stringWithString: [self.name description]];
}
- (NSString *) descriptionAge {
    return [NSString stringWithFormat: @"%d", self.age]; 
}
- (NSString*)description {
    return [NSString stringWithFormat: @"name = %@, age = %d", [_name description], _age];
}
@end
