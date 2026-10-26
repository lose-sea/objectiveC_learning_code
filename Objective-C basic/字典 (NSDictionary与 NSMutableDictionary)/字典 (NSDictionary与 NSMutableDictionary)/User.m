//
//  User.m
//  字典 (NSDictionary与 NSMutableDictionary)
//
//  Created by lose_sea on 2026/3/21.
//

#import "User.h"

@implementation User
- (id) copyWithZone: (NSZone*) zone {
    NSLog(@"====== copy ========="); 
    User* user = [[User allocWithZone: NULL] init];
    user.name = self.name;
    user.pass = self.pass;
    return user;
}
- (id) initWithName: (NSString*) name Pass: (NSString*) pass {
    self->_name = name;
    self->_pass = pass;
    return self; 
}
- (NSString*) description {
    return [NSString stringWithFormat: @"Name = %@, pass = %@", _name, _pass]; 
}
@end
