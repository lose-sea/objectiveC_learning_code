////
////  User.m
////  test 方法重写
////
////  Created by lose_sea on 2026/3/21.
////
//
//#import "User.h"
//
//@implementation User
//// 单例模式
//static User* _instance = nil;
//+ (instancetype) shareInstance {
//    static dispatch_once_t tokenOnce;
//    dispatch_once(&tokenOnce, ^ {
//        _instance = [[super allocWithZone: NULL] init];
//    });
//    return _instance;
//}
//+ (instancetype) allocWithzone: (struct _NSZone*) zone {
//    return [self shareInstance];
//}
//- (id) copyWithZone: (NSZone*) zone {
//    return self;
//}
//- (id) mutableCopyWithZone: (NSZone*) zone {
//    return self;
//}
//
//
//
//// 重写 isEqual:方法
//- (BOOL) isEqual: (id) other {
//    if (self == other) {
//        return YES;
//    }
//    if (other != nil && [other isMemberOfClass: self.class]) {
//        User* target = (User*) other;
//        return ([self.name isEqual: target.name] && [self.pass isEqual: target.pass]);
//    }
//    return NO;
//}
//
//
//
//// 重写hash 方法
//- (NSUInteger) hash {
//    NSUInteger nameHash = _name == nil ? 0 : [_name hash];
//    NSUInteger passHash = _pass == nil ? 0 : [_pass hash];
//    return nameHash * 31 + passHash;
//}
//
//- (void) jump {
//    NSLog(@"jumping");
//}
//- (void) run {
//    [self jump];
//    NSLog(@"running");
//}
//@end


#import"User.h"


@implementation User
static User* _instance;
//- (BOOL) isEqual: (id) other {
//    if (self == other) {
//        return YES;
//    }
//    if (other != nil && [other isMemberOfClass: self.class]) {
//        User* target = (User*)other;
//        return [target isEqual: self.name] && [target.pass isEqual: self.pass];
//    }
//    return NO;
//}
- (NSUInteger)hash {
    NSUInteger nameHash = _name == nil ? 0 : [self.name hash];
    NSUInteger passHash = _pass == nil ? 0 : [self.pass hash];
    return nameHash * 31 + passHash;
}

- (void)run {
}

+ (instancetype)shareInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[super allocWithZone: NULL] init];
    });
    return _instance;
}

- (BOOL) isEqual: (id)other {
    if (self == other) {
        return YES;
    }
    if (other != nil && [other isMemberOfClass: self.class]) {
        User* target = (User*)other;
        return [self.name isEqual: target.name] && [self.pass isEqual: target.pass];
    }
    return NO;
}

- (void)jump {
}

@end
