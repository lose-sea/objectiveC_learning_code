//
//  Person.m
//  test
//
//  Created by lose_sea on 2026/3/18.
//

#import "Person.h"

@implementation Person
- (NSString*) description {
    return [NSString stringWithFormat: @"<Person[_name = %@, _age = %d>", _name, _age];
}
@end

