//
//  main.m
//  test
//
//  Created by lose_sea on 2026/3/17.
//

#import <Foundation/Foundation.h>
#import"Base.h"
#import"Sub.h"

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        Base* a = [[Base alloc] init];
//        Sub* b = [[Sub alloc] init];
//        [a base];
//        [a test];
//        [b test];
//        [b sub];
//        NSLog(@"子类对象赋给父类变量\n");
//        Base* c = [[Sub alloc] init];
//        [c base];
//        [c test];
////        [c sub]; // 报错,编译器查看Base 的接口, Base里没有sub方法
//        [(Sub*)c sub];
//        NSLog(@"id 子类对象赋给子类变量\n");
//        id d = c;
//        [d sub];
//        [d base];
//        [(Base*)d test];
//        NSLog(@"父类赋给子类\n"); 
//        Sub* e = [[Base alloc] init];
//        [e base];
//        [e test];
////        [e sub];    // 报错
////        [(Sub*) e sub]; // 报错
//        
//    }
//    return EXIT_SUCCESS;
//}

//#import"Person.h"

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        Person* per =[[Person alloc] init];
//        NSLog(@"%@", per); 
//    }
//    return EXIT_SUCCESS;
//}

#import"FKUser.h"


//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        FKUser* p1 = [[FKUser alloc] initWithId: @"123" andName: @"John"];
//        FKUser* p2 = [[FKUser alloc] initWithId: @"123" andName: @"John"];
//        FKUser* p3 = [[FKUser alloc] initWithId: @"342" andName: @"xinyan"];
//        NSLog(@"%d", p1 == p2);
//        NSLog(@"%d", [p1 isEqual: p2]);
//        NSLog(@"%d", [p1 isEqual: p3]);
//    }
//    return EXIT_SUCCESS;
//}


//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        NSString* str1 = @"hello";
//        NSString* str2 = @"hello";
//        NSLog(@"%d", str1 == str2);
//        NSLog(@"%d", [str1 isEqual: str2]);
//    }
//    return EXIT_SUCCESS;
//}
//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        NSInteger it = 65;
//        CGFloat it1 = 65.0;
//        char ch = 'A';
//        NSLog(@"%d", it == ch); //返回1
//        NSLog(@"%d", it == it1); // 返回1
//        NSString* str1 = [NSString stringWithFormat:@"hello"];
//        NSString* str2 = [NSString stringWithFormat:@"hello"];
//        NSString* str3 = @"hello"; //常量池
//        NSString* str4 = @"hello";
//        NSString* str5 = [NSString stringWithFormat:@"梅西"];
//        NSString* str6 = [NSString stringWithFormat:@"梅西"];
//        NSLog(@"%p %p %p %p", str1, str2, str3, str4);
//        NSLog(@"%d", (str1 == str2)); // 返回1
//        NSLog(@"%d", [str1 isEqual: str2]); // 返回1
//        NSLog(@"%d", (str5 == str6)); // 返回0
//        NSLog(@"%p %p", str5, str6);
//    }
//    return 0;
//}

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        NSString* s1 = nil;
//        NSString* s2 = nil;
//        NSLog(@"%d", s1 == s2);
//        NSLog(@"%d", [s1 isEqual: s2]);
//    }
//    return 0;
//}

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        NSInteger it = 65;
//        CGFloat it1 = 65.0;
//        char ch = 'A';
//        NSLog(@"%d", it == ch); //返回1
//        NSLog(@"%d", it == it1); // 返回1
//        NSString* str1 = [NSString stringWithFormat:@"hello"];
//        NSString* str2 = [NSString stringWithFormat:@"hello"];
//        NSString* str3 = @"hello"; //常量池
//        NSString* str4 = @"hello";
//        NSString* str5 = [NSString stringWithFormat:@"梅西"];
//        NSString* str6 = [NSString stringWithFormat:@"梅西"];
//        NSLog(@"%p %p %p %p", str1, str2, str3, str4);
//        NSLog(@"%d", (str1 == str2)); // 返回1
//        NSLog(@"%d", [str1 isEqual: str2]); // 返回1
//        NSLog(@"%d", (str5 == str6)); // 返回0
//        NSLog(@"%p %p", str5, str6);
//    }
//    return 0;
//}


//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        NSString* str1 = [NSString stringWithString: @"hello"];
//        NSString* str2 = [NSString stringWithString: @"hello"];
//        NSLog(@"%p %p", str1, str2);
//    }
//    return EXIT_SUCCESS;
//}


//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        FKUser* user1 = [[FKUser alloc] init];
////        [user1 sayhello];
//        NSLog(@"hello");
//    }
//    return EXIT_SUCCESS;
//}

#import<Foundation/Foundation.h>
int main(int argc, char* argv[]) {
    @autoreleasepool {
        [FKUser setNation: @"China"];
        NSLog(@"FKUser 的nation 类变量为: %@", [FKUser nation]); 
    }
    return 0;
}

