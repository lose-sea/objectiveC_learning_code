//
//  main.m
//  NSString
//
//  Created by lose_sea on 2026/3/24.
//

#import <Foundation/Foundation.h>

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        // insert code here...
//        NSLog(@"Hello, World!");
//    }
//    return EXIT_SUCCESS;
//}



//// 不可变 NSString
//int main(int argc, char* argv[]) {
//    @autoreleasepool {
//        // 创建
//        NSString* str = @"hello";
//        NSString* str1 = [[NSString alloc] init];
//        NSString* str2 = [NSString stringWithFormat: @"hello %@", @"xinyan"];
//        NSString* str3 = [[NSString alloc] initWithFormat: @"%d 是质数", 5];
//        
//        unichar data[6] = {97, 98, 99, 100, 101, 102};
//        NSString* str4 = [[NSString alloc] initWithCharacters: data length: 6];
//        
//        char* cstr = "hello world";
//        NSString* str5 = [NSString stringWithUTF8String: cstr];
//    
//        NSLog(@"%@", str2);
//        NSLog(@"%@", str3);
//        NSLog(@"%@", str4);
//        
//        // 追加
//        str = [str stringByAppendingString: @" xinyan"];
//        NSLog(@"%@" ,str);
//        
//        NSString* temStr = @"girl";
//        str2 = [str2 stringByAppendingFormat: @" is a beautiful %@",temStr];
//        NSLog(@"%@", str2);
//        
//        NSLog(@"The length of str is %ld", str.length);
//        
//        NSLog(@"str 字符按照UTF - 8 字符集解码后字节数为: %lu", [str lengthOfBytesUsingEncoding: NSUTF8StringEncoding]);
//        
//        unichar data1[10] = {97, 98, 99, 100, 101, 102, 103, 104, 105, 106};
//        NSString* str6 = [NSString stringWithCharacters: data1 length: 10];
//        NSLog(@"%@", str6);
//        
//        // 截取
//        NSString* substr1 = [str6 substringToIndex: 5];
//        NSLog(@"%@", substr1);
//        
//        substr1 = [str6 substringFromIndex: 4];
//        NSLog(@"%@", substr1);
//        
//        substr1 = [str6 substringWithRange: NSMakeRange(5, 3)];
//        NSLog(@"%@", substr1);
//        
//        
//        // 大小写转换
//        str6 = [str6 uppercaseString];
//        NSLog(@"%@", str6);
//        str6 = [str6 lowercaseString];
//        NSLog(@"%@", str6);
//        
//        
//    }
//    return 0;
//}


// 可变 NSMutableString
int main(int argc, char* argv[]) {
    @autoreleasepool {
        NSString* girl = @"girl";
        NSMutableString *str = [NSMutableString stringWithFormat: @"hello, %@", girl];
        NSLog(@"%@" ,str);
        
        // 追加
        [str appendString: @" stop"];
        NSLog(@"%@", str);
        
        NSString* please = @" please";
        [str appendFormat: @"%@", please];
        NSLog(@"%@", str);
        
        // 插入
        [str insertString: @" beautiful" atIndex: 6];
        NSLog(@"%@", str);
        
        // 删除
        [str deleteCharactersInRange: NSMakeRange(7, 10)];
        NSLog(@"%@", str);
        
        // 替换
        [str replaceCharactersInRange: NSMakeRange(7, 4) withString: @"xinyan"];
        NSLog(@"%@", str);
    }
    return 0;
}
