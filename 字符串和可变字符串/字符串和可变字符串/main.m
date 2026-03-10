//
//  main.m
//  Foundation框架
//
//  Created by lose_sea on 2026/3/10.
//

#import <Foundation/Foundation.h>

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        // insert code here...
//        NSLog(@"Hello, World!");
//    }
//    return EXIT_SUCCESS;
//}


//int main(int argc, char* argv[]) {
//    @autoreleasepool {
//        unichar data[6] = {97, 98, 99, 100, 101, 102};
//        // 使用Unicode 数值数组初始化字符串
//        NSString* str = [[NSString alloc] initWithCharacters: data length: 6];
//        NSLog(@"%@", str);
//
//        char* cstr = "hello world";
//        // 将c风格的字符串转换为NSString对象
//        NSString* str2 = [NSString stringWithUTF8String: cstr];
//        NSLog(@"%@", str2);
//
//        // 字面量创建
//        NSString* str3 = @"hello world";
//        NSLog(@"%@", str3);
//
//        // 格式化字符串
//        NSString* name = @"John";
//        int age = 25;
//        NSString* str4 = [NSString stringWithFormat: @"name : %@, Age : %d", name, age];
//        NSLog(@"%@", str4);
//
//        // 从另一个字符串复制
//        NSString* copy = [NSString stringWithString: @"copy me"];
//        NSLog(@"%@", copy);
//    }
//    return 0;
//}



//int main(int argc, char* argv[]) {
//    @autoreleasepool {
//        NSString* str = @"hello";
//        NSString* book = @" world";
//        // 在str后面追加固定字符串
//        str = [str stringByAppendingString: book];
//        NSLog(@"%@", str);
//
//        // 获取字符串对应的C风格
//        const char* cstr = [str UTF8String];
//        NSLog(@"%s", cstr);
//
//        NSLog(@"str的字符个数为 %lu", [str length]);
//        NSLog(@"str按UTF-8字符解码后字节数为: %lu", [str lengthOfBytesUsingEncoding: NSUTF8StringEncoding]);
//
//        // 获取str 的前4个字符串组成的字符串
//        NSString* s1 = [str substringToIndex: 4];
//        NSLog(@"%@", s1);
//
//        // 获取str 从第3个字符开始, 与后面符组成的字符串
//        NSString* s2 = [str substringFromIndex: 3];
//        NSLog(@"%@", s2);
//
//        //获取str 从第3个字符开始, 与后面 4 个字符组成的字符串
//        NSString* s3 = [str substringWithRange: NSMakeRange(3, 4)];
//        NSLog(@"%@", s3);
//
//        // 获取world在str中出现的位置
//        NSRange pos = [str rangeOfString: @"wor"];
//        NSLog(@"wor在 str 中开始出现的位置 : %ld, 长度为 %ld", pos.location, pos.length);
//
//        // 将str的所有字符转换为大写
//        str = [str uppercaseString];
//        NSLog(@"%@", str);
//
//        // 将str的所有的字符转换为小写
//        str = [str lowercaseString];
//        NSLog(@"%@", str);
//    }
//    return 0;
//}



#import <Foundation/Foundation.h>

int main(int argc, char * argv[]) {
    @autoreleasepool {
        NSString* book = @"《疯狂iOS讲义》";
        
        // 创建一个NSMutableString对象，初始值为Hello
        NSMutableString* str = [NSMutableString stringWithString:@"Hello"];
        
        // 追加固定字符串
        [str appendString:@", iOS!"];
        NSLog(@"%@", str);
        
        // 追加带变量的字符串
        [str appendFormat:@"%@是一本非常不错的图书.", book];
        NSLog(@"%@", str);
        
        // 在指定位置插入字符串
        [str insertString:@"fkit.org" atIndex:6];
        NSLog(@"%@", str);
        
        // 删除从位置6开始、长度为12的所有字符
        [str deleteCharactersInRange:NSMakeRange(6, 12)];
        NSLog(@"%@", str);
        
        // 将从位置6开始、长度为9的所有字符替换成Objective-C
        [str replaceCharactersInRange:NSMakeRange(6, 9) withString:@"Objective-C"];
        NSLog(@"%@", str);
    }
    return 0;
}
