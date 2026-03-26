//
//  User.m
//  NSDictionary 基础方法练习
//
//  Created by lose_sea on 2026/3/26.
//

#import "User.h"

@implementation User
static User* _instance;
+ (instancetype) shareInstance {
    static dispatch_once_t tokenOnce;
    dispatch_once(&tokenOnce, ^{
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

- (id) mutableCopy: (NSZone*) zone {
    return self;
}

- (BOOL)isEqual:(id)other
{
    if (other == self) {
        return YES;
    }
    if(
}

- (NSUInteger)hash
{
    return ;
}
@end
