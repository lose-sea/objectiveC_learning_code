//
//  main.m
//  单例模式
//
//  Created by lose_sea on 2026/3/11.
//

#import <Foundation/Foundation.h>

@interface FKUser : NSObject
@property (nonatomic, copy) NSString* name;
+ (instancetype) shareInstance;
@end;

static FKUser* instance = nil;


@implementation FKUser
+ (instancetype) shareInstance {
    if (!instance) {
        instance = [[super alloc] init];
    }
    return instance;
}

@end
 
int main(int argc, char* argv[]) {
    @autoreleasepool {
        NSLog(@"%d", [FKUser shareInstance] == [FKUser shareInstance]);
    }
    return 0;
}
