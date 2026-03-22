//////
//////  main.m
//////  委托
//////
//////  Created by lose_sea on 2026/3/21.
//////
////
////#import <Foundation/Foundation.h>
////
////int main(int argc, const char * argv[]) {
////    @autoreleasepool {
////        // insert code here...
////        NSLog(@"Hello, World!");
////    }
////    return EXIT_SUCCESS;
////}
//
//
//#import <Foundation/Foundation.h>
//#import"Boss.h"
//#import"Secretary.h"
//
//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        Boss *boss = [[Boss alloc] init];
//        Secretary *secretary = [[Secretary alloc] init];
//
//        boss.delegate = secretary;  // 设置代理
//        [boss placeOrder];          // 触发代理方法
//
//    }
//    return EXIT_SUCCESS;
//}
//
//


//#import"Super.h"
//#import"Sub.h"
//
//int main(int argc, char* argv[]) {
//    @autoreleasepool {
//        Super* super = [[Super alloc] init];
//        Sub* sub = [[Sub alloc] init];
//        
//        super.delegate = sub;
//        [super say]; 
//    }
//    return 0;
//}

//#import"Up.h"
//#import"down.h"
//
//int main(int argc, char* argv[]) {
//    @autoreleasepool {
//        Up* up = [[Up alloc] init];
//        down* dow = [[down alloc] init];
//        up.delegate = dow;
//        [up test];
//    }
//    return 0;
//}

#import"teacher.h"
#import"student.h"

int main(int argc, char* argv[]) {
    @autoreleasepool {
        teacher* teac = [[teacher alloc] init];
        student* stud = [[student alloc] init];
        teac.delegate = stud;
        [teac teach];
    }
    return 0;
}

