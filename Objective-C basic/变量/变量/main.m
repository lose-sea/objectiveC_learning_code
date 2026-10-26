//
//  main.m
//  变量
//
//  Created by lose_sea on 2026/1/12.
//

//#import <Foundation/Foundation.h>
////#import"person.h"
//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        // insert code here...
//        NSLog(@"Hello, World!");
//        int i = 100;
//        NSLog(@"i: %d", i); 
//    }
//    // age = 20;
//    for (int i = 0; i < 10; i++) {
//        NSLog (@"i val: %d", i);
//    }
//    return EXIT_SUCCESS;
//}



//#import <Foundation/Foundation.h>
////#import"person.h"
//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        for (int i = 0; i < 10; i++) {
//            NSLog (@"i val: %d", i);
//        }
//    }
//    return EXIT_SUCCESS;
//}

//#import <Foundation/Foundation.h>
////#import"person.h"
//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        enum {male, female} me, you;
//        me = male;
//        you = 1;
//        me = 4;
//        NSLog(@"you的值: %u", you);
//        int ival = you * 2 + 12 + me;
//        NSLog(@"%d", ival);
//    }
//    return EXIT_SUCCESS;
//}

//#import<Foundation/Foundation.h>
//int main(int argc, char* argv[]) {
//    @autoreleasepool {
//        int count = 0;
//        while (count < 10)  {
//            NSLog(@"不停执行的死循环");
//            count--;
//        }
//        NSLog(@"永远无法跳出的循环体");
//    }
//    return EXIT_SUCCESS;
//}


//#import<Foundation/Foundation.h>
//int main(int argc, char* argv[]) {
//    @autoreleasepool {
//        int arr[5];
//        for (int i = 0, lenth = sizeof(arr) / sizeof(arr[0]); i < lenth; i++) {
//            NSLog(@"arr[%d]: %d", i, arr[i]);
//        }
//    }
//    return EXIT_SUCCESS;
//}


//#import<Foundation/Foundation.h>
//int main(int argc, char* argv[]) {
//    @autoreleasepool {
//        int arr[3][4] = {
//            {1, 2, 3, 4},
//            {5, 6, 6, 7},
//            {8, 8, 4, 5}
//        };
//        for (int i = 0; i < 3; i++) {
//            for (int j = 0; j < 4; j++) {
//                printf("%d\t", arr[i][j]);
//            }
//            printf("\n");
//        }
//    }
//    return EXIT_SUCCESS;
//}
 
//
//#import<Foundation/Foundation.h>
//@interface DataWrap : NSObject  // 定义一个DataWrap类
//// 为DataWrap定义a, b 两个属性
//@property int a;
//@property int b;
//@end
//@implementation DataWrap
//@synthesize a, b;   //为a, b两个属性合成访问器方法和实例变量
//@end
//void swap(DataWrap* dw) {
//    // 下面这三行代码实现 dw 中的 a , b 两个属性的值交换
//    int tem = dw.a;
//    dw.a = dw.b;
//    dw.b = tem;
//    NSLog(@"swap函数里, 属性a的值是 : %d, 属性b的值是: %d", dw.a, dw.b);
//}
//int main(int argc, char* argv[]) {
//    @autoreleasepool {
//        DataWrap* dw = [[DataWrap alloc] init];
//        dw.a = 6;
//        dw.b = 3;
//        swap(dw);
//        NSLog(@"交换结束后, 属性 a 的值是: %d, 属性b的值是 %d", dw.a, dw.b);
//    }
//}
//    


//// 函数指针
//#import<Foundation/Foundation.h>
//void map(int* data, int len, int (*fn)(int)) {
//    // 采用指针遍历data数组的元素
//    for (int* p = data; p < data + len; p++) {
//        // 调用fn函数, (fn) 函数是动态传入的
//        printf("%d , ", (*fn)(*p));
//    }
//    printf("\n");
//}
//int noChange(int val) {
//    return val;
//}
//// 定义一个计算平方的函数
//int square(int val) {
//    return val * val;
//}
//// 定义一个计算立方的函数
//int cube(int val) {
//    return val * val * val;
//}
//int main(int argc, char* argv[]) {
//    @autoreleasepool {
//        int data[] = {20, 12, 3, 36, 24};
//        map(data, 5, noChange);
//        map(data, 5, square);
//        map(data, 5, cube);
//    }
//    return EXIT_SUCCESS;
//}

#import<Foundation/Foundation.h>
int main(int argc, char* argv[]) {
    @autoreleasepool {
        struct rect {
            int x;
            int y;
            int width;
            int height;
        }rect1 = {1, 3, 4, 5};
        //  在定义结构体的同时, 还可以定义结构体变量
        // 可以直接对结构体变量执行初始化
    }
    return 0;
}




