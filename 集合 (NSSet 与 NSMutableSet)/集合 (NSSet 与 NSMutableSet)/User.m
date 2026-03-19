//
//  User.m
//  集合 (NSSet 与 NSMutableSet)
//
//  Created by lose_sea on 2026/3/19.
//

//#import "User.h"
//
//@implementation User
//- (id) initWithName:(NSString *)name pass:(NSString *)pass {
//    self->_name = name;
//    self->_pass = pass;
//    return self; 
//}
//- (NSUInteger) hash {
//    NSLog(@"=== hash ===");
//    NSUInteger nameHash = self->_name == nil ? 0 : [_name hash];
//    NSUInteger passHash = self->_pass == nil ? 0 : [_pass hash];
//    return nameHash * 31 + passHash;
//}
//- (BOOL) isEqual: (id) other {
//    if (self == other) {
//        return YES;
//    }
//    if (other != nil && [other isMemberOfClass: [User class]]) {
//        User* target = (User*) other;
//        return [self.name isEqual: target.name] && [self.pass isEqual: target.pass];
//    }
//    return NO;
//}
//@end



