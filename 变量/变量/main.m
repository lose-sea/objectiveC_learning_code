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


#import<Foundation/Foundation.h>
int main(int argc, char* argv[]) {
    @autoreleasepool {
        int arr[3][4] = {
            {1, 2, 3, 4},
            {5, 6, 6, 7},
            {8, 8, 4, 5}
        };
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 4; j++) {
                printf("%d\t", arr[i][j]);
            }
            printf("\n");
        }
    }
    return EXIT_SUCCESS;
}
