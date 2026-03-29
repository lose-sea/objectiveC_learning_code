//
//  FKUser.m
//  单例模式
//
//  Created by lose_sea on 2026/3/17.
//

//#import "FKUser.h"
//
//@implementation FKUser
//static FKUser* _instance;
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
#import"FKUser.h"

@implementation FKUser
static FKUser* _instance;
+ (instancetype) shareInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[super allocWithZone: NULL] init];
    });
    return _instance;
}
+ (instancetype)allocWithZone: (struct _NSZone*) zone {
    return [self shareInstance];
}
- (id) copyWithZone: (NSZone*) zone {
    return self;
}
- (id) mutableCopy: (NSZone*) zone {
    return self;
}
@end
