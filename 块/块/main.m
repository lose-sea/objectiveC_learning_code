//
//  main.m
//  块
//
//  Created by lose_sea on 2026/1/17.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 定义不带参数, 无返回值的块
        void (^printStr)(void) = ^(void) {
            NSLog(@"我正在开始学习");
        };
        // 使用printStr调用块
        printStr();
        
        //  定义带参数, 有返回值的块
        double (^hypot)(double, double) = ^(double num1, double num2) {
            return sqrt(num1 * num1 + num2 * num2);
        };
        // 调用块,并输出块的返回值
        NSLog(@"%g", hypot(3, 4));
        
        // 也可以先只定义块变量, 定义带参数, 无返回值的块
        void (^print)(NSString* info);
        print = ^(NSString* info) {
            NSLog(@"info 的参数为: %@", info);
        };
        // 调用块
        print(@"hello");
    }
    return EXIT_SUCCESS;
}
