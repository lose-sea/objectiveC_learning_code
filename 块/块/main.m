//
//  main.m
//  块
//
//  Created by lose_sea on 2026/1/17.
//

//#import <Foundation/Foundation.h>
//
//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        // 定义不带参数, 无返回值的块
//        void (^printStr)(void) = ^(void) {
//            NSLog(@"我正在开始学习");
//        };
//        // 使用printStr调用块
//        printStr();
//        
//        //  定义带参数, 有返回值的块
//        double (^hypot)(double, double) = ^(double num1, double num2) {
//            return sqrt(num1 * num1 + num2 * num2);
//        };
//        // 调用块,并输出块的返回值
//        NSLog(@"%g", hypot(3, 4));
//        
//        // 也可以先只定义块变量, 定义带参数, 无返回值的块
//        void (^print)(NSString* info);
//        print = ^(NSString* info) {
//            NSLog(@"info 的参数为: %@", info);
//        };
//        // 调用块
//        print(@"hello");
//    }
//    return EXIT_SUCCESS;
//}





//#import<Foundation/Foundation.h>
//int main(int argc, const char* argv[]) {
//    @autoreleasepool {
//        
//        // 不带参数, 无返回值
//        void (^printStr)(void) = ^void(void) {
//            NSLog(@"hello world");
//        };
//        printStr();
//        
//        // 带参数, 有返回值
//        double (^hypot)(double, double) = ^double(double a, double b) {
//            return a + b;
//        };
//        NSLog(@"%g", hypot(3, 4));
//        
//        // 带参数, 无返回值
//        void (^print)(NSString*);
//        print = ^void (NSString* info) {
//            NSLog(@"info 参数为 %@", info);
//        };
//        print(@"hello world");
//    }
//    return 0;
//}


//#import<Foundation/Foundation.h>
//int main(int argc, const char* argv[]) {
//    @autoreleasepool {
//        int my = 20;    // 定义局部变量
//        void (^printmy)(void) = ^void(void) {
//            // my = 30;
//            NSLog(@"%d", my);
//        };
//        printmy();
//    }
//    return 0;
//}


//#import<Foundation/Foundation.h>
//int main(int argc, const char* argv[]) {
//    @autoreleasepool {
//        int my = 20;    // 定义局部变量
//        void (^printmy)(void) = ^void(void) {
//            NSLog(@"%d", my);
//        };
//        my = 30;
//        printmy();
//    }
//    return 0;
//}




//#import<Foundation/Foundation.h>
//int main(int argc, const char* argv[]) {
//    @autoreleasepool {
//        // 用__block修饰局部变量
//        __block int my = 20;
//        void (^printmy)(void) = ^void (void) {
//            NSLog(@"%d", my);
//        };
//        printmy();
//        my = 45;
//        printmy();
//    }
//    return 0;
//}



//#import<Foundation/Foundation.h>
//int main(int argc, const char* argv[]) {
//    @autoreleasepool {
//        typedef void (^FKPrintBlock) (NSString*);
//        FKPrintBlock print = ^void(NSString* info) {
//            NSLog(@"%@", info);
//        };
//        
//        FKPrintBlock loopPrint = ^void(NSString* info) {
//            for (int i = 0; i < 3; i++) {
//                NSLog(@"%@", info);
//            }
//        };
//        print(@"hello world");
//        loopPrint(@"hehe");
//    }
//    return 0;
//}



//#import<Foundation/Foundation.h>
//    typedef void (^FKPrintBlock)(int);
//    // 使用FKPrintBlock定义最后一个参数类型为块
//    void processArray(int array[], unsigned int len, FKPrintBlock process) {
//        for (int i = 0; i < len; i++) {
//            process(array[i]);  // 将数组元素作为参数调用块
//        }
//    }
//    int main(int argc, const char* argv[]) {
//        @autoreleasepool {
//            int arr[] = {2, 3, 4};
//            processArray(arr, 3, ^(int num) {
//                NSLog(@"元素平方为: %d", num * num);
//            });
//        }
//        return 0;
//}

#import <Foundation/Foundation.h>

// typedef 重命名
typedef int (^CompletionBlock)(int, int);


int main(int argc, const char* argv[]) {
    @autoreleasepool {
        int(^test01)(NSString* str) = ^int(NSString* str){
            NSLog(@"执行 test01");
            return 3;
        };
        int result = test01(@"hello");
        NSLog(@"%d", result);

        
        
        // 这里也可以省略返回值
        int(^test02)(int, int) = ^(int a, int b){
            NSLog(@"执行 test02");
            return a + b;
        };
        result = test02(2, 4);
        NSLog(@"%d", result);
        
        CompletionBlock handler = ^(int a, int b){
            NSLog(@"调用 handler");
            return a - b;
        };
        result = handler(4, 2);
        NSLog(@"%d", result);
        
        
        
        int a = 10;
        void(^test03)(void) = ^{
            NSLog(@"调用test03");
            
            // 将外部的a进行了拷贝,属性为只读,无法修改
//            a = 20;

            NSLog(@"%d", a);
        };
        test03();
        a = 90;  // 修改外部 a，不影响 block 内部捕获的 a
        test03();   // 这里依旧打印 10
        
        
        
        __block int b = 20;
        void(^test04)(void) = ^{
            NSLog(@"执行test04");
            b = 60;
            NSLog(@"%d", b);
        };
        test04();
        b = 43;
        test04(); // 60
        
        
        
        
        NSString* str = @"hello";
        void(^test05)(void) = ^{
            NSLog(@"调用test05");
            NSLog(@"%@", str);
            // 无法修改
//            str = @"world";
//            NSLog(@"%@", str);
        };
        test05();
        str = @"world";
        test05();
        
        
        
        // 静态/全局变量不捕获,直接访问
        static int count = 10;
        void(^test06)(void) = ^{
            NSLog(@"调用test06");
            NSLog(@"%d", count);
            
            count = 40;
            NSLog(@"%d", count);
        };
        test06();
        count = 89;
        test06();
        
        
    }
    return EXIT_SUCCESS;
}
    


 
