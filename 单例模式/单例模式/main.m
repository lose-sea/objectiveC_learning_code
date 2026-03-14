//
//  main.m
//  单例模式
//
//  Created by lose_sea on 2026/3/11.
//

#import <Foundation/Foundation.h>

//@interface FKUser : NSObject
//@property (nonatomic, copy) NSString* name;
//+ (instancetype) shareInstance;
//@end;
//
//static FKUser* instance = nil;
//
//@implementation FKUser
//+ (instancetype) shareInstance {
//    if (!instance) {
//        instance = [[super alloc] init];
//    }
//    return instance;
//}
//
//@end
// 
//int main(int argc, char* argv[]) {
//    @autoreleasepool {
//        NSLog(@"%d", [FKUser shareInstance] == [FKUser shareInstance]);
//    }
//    return 0;
//}

//
//@interface FKUser : NSObject
//@end


//@implementation FKUser
//
//static FKUser* _instance;
//
//+ (instancetype) shareInstance {
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^ {
//        _instance = [[super allocWithZone: NULL] init];
//    });
//    return _instance;
//}
//
//+ (instancetype) allocWithZone: (struct _NSZone*) zone {
//    return [self shareInstance];
//}
//
//- (instancetype) copyWithZone: (NSZone*) zone {
//    return _instance;
//}
//
//- (id) mutableCopyWithZone: (NSZone*) zone {
//    return _instance;
//}
//@end


//@implementation FKUser
//static FKUser* _instance;
//
//+ (instancetype) shareInstance {
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^ {
//        _instance = [[super allocWithZone: NULL] init];
//    });
//    return _instance;
//}
//
//+ (instancetype) allocWithZone: (struct _NSZone*) zone {
//    return [self shareInstance];
//}
//
//- (id) copyWithZone: (NSZone*) zone {
//    return _instance;
//}
//
//- (id) mutableCopy: (NSZone*) copy {
//    return _instance;
//}
//@end
//
//int main(int argc, char* argv[]) {
//    @autoreleasepool {
//        FKUser* user = [FKUser shareInstance];
//        FKUser* user2 = [FKUser shareInstance];
//        NSLog(@"%d", user == user2);
//    }
//    return 0;
//}





//#import<Foundation/Foundation.h>
//
//@interface FKUser : NSObject
//+ (instancetype) shareInstance;
//@end
//
//@implementation FKUser
//static FKUser* _instance;
//+ (instancetype) shareInstance {
//    static dispatch_once_t tokenOnce;
//    dispatch_once (&tokenOnce, ^ {
//        _instance = [[super allocWithZone: NULL] init];
//    });
//    return _instance;
//}
//+ (instancetype) allocWithZone: (struct _NSZone*) zone {
//    return [self shareInstance];
//}
//- (id) copyWithZone: (struct _NSZone*) zone {
//    return _instance;
//}
//
//- (id) mutableCopy: (struct _NSZone*) zone {
//    return _instance;
//}
//@end


//#import<Foundation/Foundation.h>
//@interface FKUser : NSObject
//+ (instancetype) shareInstance;
//@end
//
//
//@implementation FKUser
//static FKUser* _instance;
//
//+ (instancetype) shareInstance {
//    static dispatch_once_t tokenOnce;
//    dispatch_once(&tokenOnce, ^ {
//        _instance = [[super allocWithZone: NULL] init];
//    });
//    return _instance;
//}
//+ (instancetype) allocWithZone:(struct _NSZone *)zone {
//    return [self shareInstance];
//}
//- (id) copyWithZone: (struct _NSZone*) zone {
//    return _instance;
//}
//- (id) mutanbleCopy: (struct _NSZone*) zone {
//    return _instance;
//}
//@end



#import<Foundation/Foundation.h>
@interface FKUser : NSObject
+ (instancetype) shareInstance;
@end

@implementation FKUser
static FKUser* _instance;
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
    return _instance;
}
- (id) mutableCopy: (NSZone*) zone {
    return _instance;
}
@end
