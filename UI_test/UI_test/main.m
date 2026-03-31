//
//  main.m
//  UI_test
//
//  Created by lose_sea on 2026/3/30.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    
    // UIKit框架结构的启动函数
    // 参数一: argc: 启动时带有参数的个数
    // 参数二: argv[] 参数列表
    // 参数三: 要求传入一个主框架类对象, 如果为nil, 系统会自动用默认的框架作为主框架类名
    // 参数四: 主框架的代理类对象名字
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
