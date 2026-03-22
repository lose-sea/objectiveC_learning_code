////
////  instance.m
////  test
////
////  Created by lose_sea on 2026/3/21.
////
//
//#import "Instance.h"
//
//@implementation Instance
//static Instance* _instance;
//+ (instancetype) shareInstance {
//    static dispatch_once_t tokenOnce;
//    dispatch_once(&tokenOnce, ^ {
//        _instance = [[super allocWithZone: NULL] init];
//    });
//    return _instance;
//}
//+ (instancetype) allocWithZone: (struct _NSZone*) zone {
//    return [self shareInstance];
//}
//- (id) copyWithZone: (NSZone*) zone {
//    return _instance;
//}
//- (id) mutableCopy: (NSZone*) zone {
//    return _instance;
//}
//@end


#import"Instance.h"

@implementation Instance
static Instance* _instance = nil;
+ (instancetype) shareInstance {
    static dispatch_once_t tokenOnce;
    dispatch_once(&tokenOnce, ^ {
        _instance = [[super allocWithZone: NULL] init];
    });
    return _instance;
}
+ (instancetype) allocWithZone:(struct _NSZone *)zone {
    return [self shareInstance];
}
- (id) copyWithZone: (NSZone*) zone {
    return self;
}
- (id) mutableCopyWithZone: (NSZone*) zone {
    return self;
}

- (BOOL) isEqual: (id) other {
    if (self == other) {
        return YES;
    }
    if (other != nil && [other isMemberOfClass: self.class]) {
        Instance* target = (Instance*) other;
        return [self.name isEqual: target.name];
    }
    return NO;
}
@end

