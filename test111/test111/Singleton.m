//
//  instance.m
//  test111
//
//  Created by lose_sea on 2026/3/26.
//

#import "Singleotn.h"

@implementation Singleton
static Singleton* _instance;
+ (instancetype) shareInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[super allocWithZone: NULL] init];
    });
    return _instance;
}

+(instancetype) allocWithZone:(struct _NSZone *)zone {
    return [self shareInstance];
}

- (id) copyWithZone: (NSZone*) zone {
    return self;
}

- (id) mutableCopy: (NSZone*) zone {
    return _instance; 
}
@end
