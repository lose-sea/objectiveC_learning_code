//
//  main.m
//  对象复制
//
//  Created by lose_sea on 2026/3/10.
//

//#import <Foundation/Foundation.h>
//
//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        // insert code here...
//        NSLog(@"Hello, World!");
//    }
//    return EXIT_SUCCESS;
//}




//#import <Foundation/Foundation.h>
//
//int main(int argc, char * argv[]) {
//    @autoreleasepool {
//        // 1. 测试可变字符串的mutableCopy（复制出可变副本）
//        NSMutableString* book = [NSMutableString stringWithString:@"疯狂iOS讲义"];
//        // 复制book的可变副本
//        NSMutableString* bookCopy = [book mutableCopy];
//        // 修改副本，原字符串不受影响
//        [bookCopy replaceCharactersInRange:NSMakeRange(2, 3)
//                                withString:@"Android"];
//        NSLog(@"book的值为：%@", book);       // 输出原字符串：疯狂iOS讲义
//        NSLog(@"bookCopy的值为：%@", bookCopy); // 输出修改后的副本：疯狂Android义
//        
//        // 2. 测试不可变字符串的mutableCopy（复制出可变副本）
//        NSString* str = @"fkit";
//        // 复制不可变字符串的可变副本
//        NSMutableString* strCopy = [str mutableCopy];
//        // 向可变副本追加字符串
//        [strCopy appendString:@".org"];
//        NSLog(@"strCopy的值为：%@", strCopy); // 输出：fkit.org
//        NSLog(@"strCopy的值为：%@", str);
//        
//        // 3. 测试可变字符串的copy（复制出不可变副本）
//        NSMutableString* bookCopy2 = [book copy];
//        // 以下代码会报错：因为bookCopy2是不可变字符串，无appendString方法
//        // [bookCopy2 appendString:@"aa"];
//    }
//    return 0;
//}


//#import <Foundation/Foundation.h>
//
//@interface FKDog : NSObject
//@property (nonatomic, strong) NSMutableString* name;
//@property (nonatomic, assign) int age;
//@end
//
//@implementation FKDog
////- (id) copyWithZone: (NSZone*) zone {
////    NSLog(@"执行 copyWithZone: ");
////    FKDog* dog = [[[self class] allocWithZone: zone] init];
////    dog.name = self.name;
////    dog.age = self.age;
////    return dog;
////}
//
//- (id) copyWithZone: (NSZone*) zone {
//    NSLog(@"执行 copyWithZone: ");
//    // 使用zone 参数创建FKDog 对象
//    FKDog* dog = [[[self class] allocWithZone: zone] init];
//    // 将原来的对象的name实例变量复制一份后赋值给新对象的 name 实例变量
//    dog.name = [self.name mutableCopy];
//    dog.age = self.age;
//    return dog;
//}
//
//@end


//int main(int argc, char * argv[]) {
//    @autoreleasepool {
//        FKDog* dog1 = [FKDog new]; // 创建一个FKDog对象
//        dog1.name = [NSMutableString stringWithString:@"旺财"];
//        dog1.age = 20;
//        FKDog* dog2 = [dog1 copy]; // 复制副本
//        NSLog(@"%@, %d", dog2.name, dog2.age);
//    }
//    return 0;
//}


//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        FKDog* dog1 = [FKDog new]; // 创建一个FKDog对象
//        dog1.name = [NSMutableString stringWithString:@"旺财"];
//        dog1.age = 2;
//        
//        FKDog* dog2 = [dog1 copy]; // 复制副本
//        [dog2.name replaceCharactersInRange:NSMakeRange(0, 2)
//                                 withString:@"snoopy"]; // 修改dog2的name属性值
//        
//        // 查看dog2、dog1的name属性值
//        NSLog(@"dog2的name为:%@", dog2.name);
//        NSLog(@"dog1的name为:%@", dog1.name);
//    }
//    return 0;
//}


//#import <Foundation/Foundation.h>
//
//@interface FKItem : NSObject
//// 使用copy指示符修饰NSMutableString属性
//@property (nonatomic, copy) NSMutableString *name;
//@end
//
//
//@implementation FKItem
//
//@end
//
//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        FKItem* item = [FKItem new]; // 创建FKItem对象
//        // 为name属性赋值可变字符串
//        item.name = [NSMutableString stringWithString:@"疯狂iOS讲义"];
//        // 尝试为name属性追加字符串（此处会触发运行时错误）
//        [item.name appendString:@"fkit"];
//    }
//    return 0;
//}


#import<Foundation/Foundation.h>

@interface FKDog : NSObject
@property (nonatomic, strong) NSMutableString* name;
@property (nonatomic, assign) int age;
@end

@implementation FKDog
- (id) copyWithZone: (NSZone*) zone {
    NSLog(@"开始执行copy");
    FKDog* dog = [[FKDog alloc] init];
    // dog.name = _name;
    dog.name = [self.name mutableCopy];
    dog.age = _age;
    return dog;
}
@end

//int main(int argc, char* argv[]) {
//    FKDog* dog1 = [[FKDog alloc] init];
//    dog1.name = [NSMutableString stringWithString: @"John"];
//    dog1.age = 20;
//    FKDog* dog2 = [dog1 copy];
//    NSLog(@"%@ %d", dog1.name, dog1.age);
//    dog2.name = [NSMutableString stringWithString: @"hello"];
//    NSLog(@"%@ %d", dog2.name, dog2.age);
//    return 0;
//}

int main(int argc, char* argv[]) {
    FKDog* dog = [[FKDog alloc] init];
    dog.name = [NSMutableString stringWithString: @"hello"];
    dog.age = 32;
    NSLog(@"%@ %d", dog.name, dog.age);
    FKDog* dogCopy = [dog copy];
    [dogCopy.name replaceCharactersInRange: NSMakeRange(0, 3) withString: @"nihao"];
    NSLog(@"%@ %d", dog.name, dog.age);
    NSLog(@"%@ %d", dogCopy.name, dogCopy.age);
    return 0;
}

