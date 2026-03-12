//
//  main.m
//  字典 (NSDictionary与 NSMutableDictionary)
//
//  Created by lose_sea on 2026/3/12.
//

//#import <Foundation/Foundation.h>
//
////int main(int argc, const char * argv[]) {
////    @autoreleasepool {
////        // insert code here...
////        NSLog(@"Hello, World!");
////    }
////    return EXIT_SUCCESS;
////}
//
//
//@interface NSDictionary (print)
//- (void) print;
//@end
//
//@implementation NSDictionary (print)
//- (void) print {
//    NSMutableString* result = [NSMutableString stringWithString: @"["];
//    for (id key in self) {
//        [result appendString: [key description]];
//        [result appendString: @" = "];
//        // [result appendString: [self [key] description]];
//        [result appendString: [self objectForKey: key]];
//        [result appendString: @", "];
//    }
//    NSUInteger len = [result length];
//    // 去掉字符串的最后两个字符
//    [result deleteCharactersInRange: NSMakeRange(len - 2, 2)];
//    [result appendString: @"]"];
//    NSLog (@"%@", result);
//}
//@end

//int main(int argc, char* argv[]) {
//    @autoreleasepool {
//        // 使用简化的语法创建NSDictionary 对象
//        NSDictionary* dict = @{@"one": @"Objective-C", @"two": @"Ruby", @"three": @"Python", @"four": @"Perl"};
//         // 打印dict 集合中所有的元素
//        [dict print];
//        // 获取所有直接调用value的compare: 方法对所有的key排序
//        // 返回排好序的所有key组成的 NSArray
//        NSArray* keyArr1 = [dict keysSortedByValueUsingSelector: @selector(compare:)];
//        NSLog(@"%@", keyArr1);
//        [dict print];
//        NSArray* keyArr2 = [dict keysSortedByValueUsingComparator: ^(id value1, id value2) {
//            // 定义比较规则
//            if ([value1 length] > [value2 length]) {
//                return NSOrderedDescending;
//            }
//            if ([value1 length] < [value2 length]) {
//                return NSOrderedAscending;
//            }
//            return NSOrderedSame;
//        }];
//        NSLog(@"%@", keyArr2);
//        [dict print];
//    }
//    return 0;
//}


#import <Foundation/Foundation.h>

@interface NSDictionary (print)
- (void)print;
@end


@implementation NSDictionary (print)
- (void)print
{
    NSMutableString *result = [NSMutableString stringWithString:@"["];
    for (id key in self) {
        [result appendString:[key description]];
        [result appendString:@" = "];
        [result appendString:[key description]];
        [result appendString:@", "];
    }
    NSUInteger len = [result length];
    if (len > 2) {
        // 去掉字符串最后一个", "
        [result deleteCharactersInRange:NSMakeRange(len - 2, 2)];
    }
    [result appendString:@"]"];
    NSLog(@"%@", result);
}
@end

int main(int argc , char * argv[])
{
    @autoreleasepool
    {
        // 使用简化语法创建NSDictionary对象
        NSDictionary* dict = @{
            @"Objective-C": [NSNumber numberWithInt:89],
            @"Ruby": [NSNumber numberWithInt:69],
            @"Python": [NSNumber numberWithInt:75],
            @"Perl": [NSNumber numberWithInt:109]
        };

        // 打印dict集合的所有元素
        [dict print];
        // 对NSDictionary的所有key进行过滤
        NSSet* keySet = [dict keysOfEntriesPassingTest:
            // 使用代码块对NSDictionary的key-value对进行过滤
            ^(id key, id value, BOOL* stop)
            {
                // 当value的值大于80时返回YES
                // 这意味着只有value的值大于80的key才会被保存下来
            // *stop = YES;
                return (BOOL)([value intValue] > 80);
            }];
        NSLog(@"%@", keySet);
    }
}
