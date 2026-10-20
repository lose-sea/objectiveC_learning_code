
#import <Foundation/Foundation.h>

// typedef 重命名
typedef int (^CompletionBlock)(int, int);

void test(int a, int(^SayHello)(int b));

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
        
        
        
        
        NSString* str01 = @"hello";
        void(^test05)(void) = ^{
            NSLog(@"调用test05");
            NSLog(@"%@", str01);
            // 无法修改
//            str = @"world";
//            NSLog(@"%@", str01);
        };
        test05();
        str01 = @"world";
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
        
        
        
        test(3, ^int(int b){
            NSLog(@"%d", b);
            return 10;
        });
        
        
        int temp = 19;
        void(^test07)(void) = ^{
            NSLog(@"执行了test07");
        };
        test07();
        NSLog(@"%@", [test07 class]);
                
        void(^test08)(void) = ^{
            NSLog(@"执行了test08");
            NSLog(@"%d", temp);
        };
        test08();
        NSLog(@"%@", [test08 class]);
        
        
        
        NSString* str02 = @"hello";
        void(^test09)(void) = ^{
            NSString*  d = [str02 copy];
            NSLog(@"%@", d);
        };
        str02 = @"world";
        test09();
    }
    return EXIT_SUCCESS;
}


    

void test(int a, int(^SayHello)(int)) {
    SayHello(a);
}
 
