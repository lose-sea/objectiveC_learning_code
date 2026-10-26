////////////
////////////  main.m
////////////  字典 (NSDictionary与 NSMutableDictionary)
////////////
////////////  Created by lose_sea on 2026/3/12.
////////////
//////////
////////////#import <Foundation/Foundation.h>
////////////
//////////////int main(int argc, const char * argv[]) {
//////////////    @autoreleasepool {
//////////////        // insert code here...
//////////////        NSLog(@"Hello, World!");
//////////////    }
//////////////    return EXIT_SUCCESS;
//////////////}
////////////
////////////
////////////@interface NSDictionary (print)
////////////- (void) print;
////////////@end
////////////
////////////@implementation NSDictionary (print)
////////////- (void) print {
////////////    NSMutableString* result = [NSMutableString stringWithString: @"["];
////////////    for (id key in self) {
////////////        [result appendString: [key description]];
////////////        [result appendString: @" = "];
////////////        // [result appendString: [self [key] description]];
////////////        [result appendString: [self objectForKey: key]];
////////////        [result appendString: @", "];
////////////    }
////////////    NSUInteger len = [result length];
////////////    // 去掉字符串的最后两个字符
////////////    [result deleteCharactersInRange: NSMakeRange(len - 2, 2)];
////////////    [result appendString: @"]"];
////////////    NSLog (@"%@", result);
////////////}
////////////@end
//////////
////////////int main(int argc, char* argv[]) {
////////////    @autoreleasepool {
////////////        // 使用简化的语法创建NSDictionary 对象
////////////        NSDictionary* dict = @{@"one": @"Objective-C", @"two": @"Ruby", @"three": @"Python", @"four": @"Perl"};
////////////         // 打印dict 集合中所有的元素
////////////        [dict print];
////////////        // 获取所有直接调用value的compare: 方法对所有的key排序
////////////        // 返回排好序的所有key组成的 NSArray
////////////        NSArray* keyArr1 = [dict keysSortedByValueUsingSelector: @selector(compare:)];
////////////        NSLog(@"%@", keyArr1);
////////////        [dict print];
////////////        NSArray* keyArr2 = [dict keysSortedByValueUsingComparator: ^(id value1, id value2) {
////////////            // 定义比较规则
////////////            if ([value1 length] > [value2 length]) {
////////////                return NSOrderedDescending;
////////////            }
////////////            if ([value1 length] < [value2 length]) {
////////////                return NSOrderedAscending;
////////////            }
////////////            return NSOrderedSame;
////////////        }];
////////////        NSLog(@"%@", keyArr2);
////////////        [dict print];
////////////    }
////////////    return 0;
////////////}
//////////
//////////
////////////#import <Foundation/Foundation.h>
////////////
////////////@interface NSDictionary (print)
////////////- (void)print;
////////////@end
////////////
////////////
////////////@implementation NSDictionary (print)
////////////- (void)print
////////////{
////////////    NSMutableString *result = [NSMutableString stringWithString:@"["];
////////////    for (id key in self) {
////////////        [result appendString:[key description]];
////////////        [result appendString:@" = "];
////////////        [result appendString:[key description]];
////////////        [result appendString:@", "];
////////////    }
////////////    NSUInteger len = [result length];
////////////    if (len > 2) {
////////////        // 去掉字符串最后一个", "
////////////        [result deleteCharactersInRange:NSMakeRange(len - 2, 2)];
////////////    }
////////////    [result appendString:@"]"];
////////////    NSLog(@"%@", result);
////////////}
////////////@end
////////////
////////////int main(int argc , char * argv[])
////////////{
////////////    @autoreleasepool
////////////    {
////////////        // 使用简化语法创建NSDictionary对象
////////////        NSDictionary* dict = @{
////////////            @"Objective-C": [NSNumber numberWithInt:89],
////////////            @"Ruby": [NSNumber numberWithInt:69],
////////////            @"Python": [NSNumber numberWithInt:75],
////////////            @"Perl": [NSNumber numberWithInt:109]
////////////        };
////////////
////////////        // 打印dict集合的所有元素
////////////        [dict print];
////////////        // 对NSDictionary的所有key进行过滤
////////////        NSSet* keySet = [dict keysOfEntriesPassingTest:
////////////            // 使用代码块对NSDictionary的key-value对进行过滤
////////////            ^(id key, id value, BOOL* stop)
////////////            {
////////////                // 当value的值大于80时返回YES
////////////                // 这意味着只有value的值大于80的key才会被保存下来
////////////            // *stop = YES;
////////////                return (BOOL)([value intValue] > 80);
////////////            }];
////////////        NSLog(@"%@", keySet);
////////////    }
////////////}
//////////
////////////#import <Foundation/Foundation.h>
////////////
////////////@interface NSDictionary (print)
////////////- (void)print;
////////////@end
////////////
////////////
////////////@implementation NSDictionary (print)
////////////- (void)print
////////////{
////////////    NSMutableString *result = [NSMutableString stringWithString:@"["];
////////////    for (id key in self) {
////////////        [result appendString:[key description]];
////////////        [result appendString:@" = "];
////////////        [result appendString:[key description]];
////////////        [result appendString:@", "];
////////////    }
////////////    NSUInteger len = [result length];
////////////    if (len > 2) {
////////////        // 去掉字符串最后一个", "
////////////        [result deleteCharactersInRange:NSMakeRange(len - 2, 2)];
////////////    }
////////////    [result appendString:@"]"];
////////////    NSLog(@"%@", result);
////////////}
////////////@end
////////////
////////////
////////////@interface FKUser : NSObject <NSCopying>
////////////@property (nonatomic, copy) NSString* name;
////////////@property (nonatomic, copy) NSString* pass;
////////////- (id) initWithName: (NSString*) aName pass: (NSString*) aPass;
////////////- (void) say: (NSString*) content;
////////////@end
////////////
////////////@implementation FKUser
////////////@synthesize name = name;
////////////@synthesize pass = pass;
////////////- (id) initWithName: (NSString*) aName pass: (NSString*) aPass {
////////////    if (self = [super init]) {
////////////        self.name = aName;
////////////        self->name = aName;
////////////        self->pass = aPass;
////////////    }
////////////    return self;
////////////}
////////////- (void) say: (NSString*) content {
////////////    NSLog(@"%@ say %@", name, content);
////////////}
////////////
////////////// 重写isEqual 方法
////////////- (BOOL) isEqual: (id) other {
////////////    if (self == other) {
////////////        return YES;
////////////    }
////////////    if ([self class] == [FKUser class]) {
////////////        FKUser* target = (FKUser*) other;
////////////        return [self.name isEqualToString: target.name] && [self.pass isEqualToString: target.pass];
////////////    }
////////////    return NO;
////////////}
////////////// 重写description 方法
////////////- (NSString*) description {
////////////    return [NSString stringWithFormat: @"my name is %@, my pass is %@", name, pass];
////////////}
////////////
////////////- (NSUInteger) hash {
////////////    NSUInteger namehash = name == nil ? 0 : [name hash];
////////////    NSUInteger passhash = pass == nil ? 0 : [pass hash];
////////////    return namehash * 31 + passhash;
////////////}
////////////- (id) copyWithZone: (NSZone*) zone {
////////////    NSLog(@"copying");
////////////    FKUser* newUser = [[[self class] alloc] init];
////////////    // 复制一个对象
////////////    newUser->name = name;
////////////    newUser->pass = pass;
////////////    return newUser;
////////////}
////////////@end
////////////
////////////int main(int argc, char* argv[]) {
////////////    @autoreleasepool {
////////////        FKUser* u1 = [[FKUser alloc] initWithName: @"hai" pass: @"345"];
////////////        NSDictionary* dict = @{
////////////            [[FKUser alloc] initWithName:@"sun" pass: @"123"]: @"one",
////////////            u1: @"two",
////////////            [[FKUser alloc] initWithName:@"xun" pass: @"345"]: @"three",
////////////            [[FKUser alloc] initWithName:@"liu" pass: @"324"]: @"four",};
////////////            u1.pass = nil;
////////////            
////////////            // 由于NSDictionary 并未直接使用u1 所指向的FKUser作为 key
////////////            // 而是先复制了u1所指向的副本 ,然后以该副本作为key
////////////            // 因此程序将可以看到dict 的key 不会收到任何影响
////////////        [dict print];
////////////        };
////////////    return 0;
////////////}
//////////
//////////
//////////
//////////
//////////
//////////#import<Foundation/Foundation.h>
//////////
//////////@interface NSDictionary (print)
//////////- (void)print;
//////////@end
//////////
//////////
//////////@implementation NSDictionary (print)
//////////- (void)print
//////////{
//////////    NSMutableString *result = [NSMutableString stringWithString:@"["];
//////////    for (id key in self) {
//////////        [result appendString:[key description]];
//////////        [result appendString:@" = "];
//////////        [result appendString: [[self objectForKey: key] description]];
//////////        [result appendString:@", "];
//////////    }
//////////    NSUInteger len = [result length];
//////////    if (len > 2) {
//////////        // 去掉字符串最后一个", "
//////////        [result deleteCharactersInRange:NSMakeRange(len - 2, 2)];
//////////    }
//////////    [result appendString:@"]"];
//////////    NSLog(@"%@", result);
//////////}
//////////@end
//////////
//////////int main(int argc, char* argv[]) {
//////////    @autoreleasepool {
//////////        // 使用单个key-value对创建NSMutableDictionary对象
//////////        NSMutableDictionary* dict = [NSMutableDictionary dictionaryWithObjectsAndKeys: [NSNumber numberWithInt: 89], @"疯狂iOS讲义", nil];
//////////        [dict print];
//////////        // 使用下标法设置 key-value 对, 由于NSDictionary 中已经存在该key, 会覆盖
//////////        dict[@"疯狂iOS讲义"] = [NSNumber numberWithInt:99];
//////////        [dict print];
//////////        
//////////        dict[@"hello"] = [NSNumber numberWithInt: 87];
//////////        [dict print];
//////////        // 将另一个NSDIctionary中的key-value 对添加到当前的 NSDIctionary中
//////////        NSDictionary* dict2 = [NSDictionary dictionaryWithObjectsAndKeys:@"hello",[NSNumber numberWithInt: 54], @"xinyan", [NSNumber numberWithInt: 89],  @"world", [NSNumber numberWithInt: 32], nil];
//////////        [dict addEntriesFromDictionary: dict2];
//////////        [dict print];
//////////        
//////////        // 根据key 删除 key-value对
//////////        [dict removeObjectForKey: @"hello"];
//////////        [dict print];
//////////    }
//////////    return 0;
//////////}
////////
////////#import<Foundation/Foundation.h>
////////int main(int argc, char* argv[]) {
////////    @autoreleasepool {
//////////        NSDictionary* dict = [NSDictionary dictionary]; 创建一个不包含任何key-value对的NSDictioinary
//////////        NSDictionary* dict = [NSDictionary dictionaryWithObject: @"hello" forKey: [NSNumber numberWithInt: 5]];
//////////        NSDictionary* dict1 = [NSDictionary dictionaryWithObjects: [NSArray arrayWithObjects: @"hello", @"xinyan", nil] forKeys: [[NSArray alloc] initWithObjects: [NSNumber numberWithInt: 4], [NSNumber numberWithInt: 6], nil]];
//////////        NSDictionary* dict = [NSDictionary dictionaryWithDictionary: dict1];
//////////        NSDictionary* dict = [NSDictionary dictionaryWithObjectsAndKeys: @"hello", [NSNumber numberWithInt: 4], @"xinyan", [NSNumber numberWithInt: 5], nil];
////////        NSDictionary* dict = @{[NSNumber numberWithInt: 5]: @"hello", [NSNumber numberWithInt: 7]: @"xinyan"}; 
////////        NSLog(@"%@", dict);
////////        
////////    }
////////    return 0;
////////}
//////
//////
//////#import<Foundation/Foundation.h>
//////int main(int argc, char* argv[]) {
//////    @autoreleasepool {
//////        NSDictionary* dict = [[NSDictionary alloc] initWithObjectsAndKeys: @"hello", [NSNumber numberWithInt: 5], @"xinyan", [NSNumber numberWithInt: 3], @"asdfghjkl", [NSNumber numberWithInt: 9], nil];
//////        NSLog(@"%ld", [dict count]);
//////        NSLog(@"%@", [dict allKeys]);
//////        NSLog(@"%@", [dict allKeysForObject: @"hello"]);
//////        NSLog(@"%@", [dict objectForKey: [NSNumber numberWithInt: 3]]);
//////        NSEnumerator* en = [dict keyEnumerator];
//////        NSString* key;
//////        while ((key = [en nextObject])) {
//////            NSLog(@"%@ %@", key, dict[key]);
//////        }
//////        [dict enumerateKeysAndObjectsUsingBlock: ^(id key, id value, BOOL* stop) {
//////            NSLog(@"key 的值为 %@, value 的为%@", key, value);
//////        }];
//////        NSArray* arr = [dict keysSortedByValueUsingComparator: ^(id value1, id value2) {
//////            if ([value1 length] > [value2 length]) {
//////                return NSOrderedAscending;
//////            } else if ([value1 length] < [value2 length]) {
//////                return NSOrderedDescending;
//////            }
//////            return NSOrderedSame;
//////        }];
//////        
//////        NSLog(@"%@", dict);
//////        NSLog(@"%@", arr);
//////        NSSet* set = [dict keysOfEntriesPassingTest: ^(id key, id value, BOOL* stop) {
//////            return (BOOL)([value length] > 5);
//////        }];
//////        NSLog(@"%@", set);
//////    }
//////    return 0;
//////}
////
////
////#import<Foundation/Foundation.h>
////int main(int argc, char* argv[]) {
////    NSDictionary* dict = [NSDictionary dictionaryWithObjectsAndKeys: @"hello", [NSNumber numberWithInt: 8], @"xinyan", [NSNumber numberWithInt: 3], @"pythonswift", [NSNumber numberWithInt: 7], nil];
////    NSSet* set = [dict keysOfEntriesPassingTest: ^(id key, id value, BOOL* stop) {
////        return (BOOL)([value length] > 5);
////    }];
////    NSLog(@"%@", set);
////    NSLog(@"%@", [dict objectsForKeys: [set allObjects] notFoundMarker: @"not found"]);
////    return 0;
////}
//
//#import"User.h"
//int main(int argc, char* argv[]) {
//    NSDictionary* dict = [NSDictionary dictionaryWithObjectsAndKeys:
//                          @"one", [[User alloc] initWithName: @"John" Pass: @"123"],
//                          @"two", [[User alloc] initWithName: @"make" Pass: @"345"],
//                          @"three", [[User alloc] initWithName: @"xinyan" Pass: @"654"],
//                    nil];
//    NSLog(@"%ld", [dict count]);
//    NSLog(@"%@", dict);
//    return 0;
//}

#import<Foundation/Foundation.h>
int main(int argc, char *argv[]) {
    NSMutableDictionary* dict = [NSMutableDictionary dictionaryWithObjectsAndKeys: @"hello", @"one", @"swift", @"two", @"python", @"three", nil];
    [dict setValue: @"java" forKey: @"one"];
    NSLog(@"%@", dict);
    NSMutableDictionary* dict1 = [NSMutableDictionary dictionaryWithObject: @"nihao" forKey: @"Four"];
    [dict1 addEntriesFromDictionary: dict];
    [dict1 setDictionary: dict];
    [dict1 removeObjectForKey: @"one"];
    [dict1 removeAllObjects];
    [dict removeObjectsForKeys: [NSArray arrayWithObjects: @"one", @"two",  nil]];
    NSLog(@"%@", dict);
    return 0;
}


