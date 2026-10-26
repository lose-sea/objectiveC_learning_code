//
//  Person.m
//  NSSet 基础方法练习
//
//  Created by lose_sea on 2026/3/25.
//

#import "Person.h"
// hash 方法重写
@implementation Person
static Person* _instance;
- (NSUInteger) hahs {
    NSUInteger nameHash = _name == nil ? 0 :  [_name hash];
    NSUInteger passHash = _pass == nil ? 0 : [_pass hash];
    return nameHash * 31 + passHash;
}
// isEqual 方法重写
- (BOOL) isEqual: (id) other {
    if (self == other) {
        return YES;
    }
    if (other != nil  && [other isMemberOfClass: Person.class]) {
        Person* target = (Person*)other;
        return [self.name isEqual: target.name] && [self.pass isEqual: target.pass];
    }
    return NO;
}
+ (instancetype) shareInstance {
    static dispatch_once_t tokenOnce;
    dispatch_once(&tokenOnce, ^{
        _instance = [[super allocWithZone: NULL] init];
    });
    return _instance;
}
+ (instancetype) allocWithZone: (struct _NSZone*) zone {
    return [self shareInstance]; 
}
- (id) copyWithZone: (NSZone*) zone {
    return _instance;
}
- (id) mutableCopyWithZone: (NSZone*) zone {
    return _instance;
}

@end
