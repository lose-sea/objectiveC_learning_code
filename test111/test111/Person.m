//
//  People.m
//  test111
//
//  Created by lose_sea on 2026/3/26.
//

#import "Person.h"

@implementation Person
- (id) initWithName:(NSString *)Name andAge:(int)Age {
    self.name = Name;
    self.age = Age;
    return self;
}
- (NSString *)descriptionName {
    return [NSString stringWithString: [self.name description]];
}
- (NSString *) descriptionAge {
    return [NSString stringWithFormat: @"%d", self.age]; 
}
@end
