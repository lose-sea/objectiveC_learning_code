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

#import <Foundation/Foundation.h>
//#import"person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        enum {male, female} me, you;
        me = male;
        you = 1;
        me = 4;
        NSLog(@"you的值: %u", you);
        int ival = you * 2 + 12 + me;
        NSLog(@"%d", ival);
    }
    return EXIT_SUCCESS;
}

