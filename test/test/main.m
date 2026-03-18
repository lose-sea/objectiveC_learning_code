//
//  main.m
//  test
//
//  Created by lose_sea on 2026/3/17.
//

#import <Foundation/Foundation.h>
#import"Base.h"
#import"Sub.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Base* a = [[Base alloc] init];
        Sub* b = [[Sub alloc] init];
        [a base];
        [a test];
        [b test];
        [b sub];
        Base* c = [[Sub alloc] init];
        [c base];
        [c test];
//         [c sub];   // 报错,编译器查看Base 的接口, Base里没有sub方法
        id d = c;
        [d sub];
        [d base];
        [(Base*)d test];
    }
    return EXIT_SUCCESS;
}
