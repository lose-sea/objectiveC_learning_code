//
//  main.m
//  数组(NSArray 与 NSMutableArray)
//
//  Created by lose_sea on 2026/3/10.
//
//
//#import <Foundation/Foundation.h>

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        // insert code here...
//        NSLog(@"Hello, World!");
//    }
//    return EXIT_SUCCESS;
//}


//#import <Foundation/Foundation.h>
//
//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        // 创建包含多个字符串的NSArray
//        NSArray *array = [NSArray arrayWithObjects:
//                          @"疯狂iOS讲义", @"疯狂Android讲义",
//                          @"疯狂Ajax讲义", @"疯狂XML讲义",
//                          @"疯狂Swift讲义", nil];
//        
//        // 访问指定索引的元素
//        NSLog(@"第一个元素：%@", [array objectAtIndex:0]);
//        NSLog(@"索引为1的元素：%@", [array objectAtIndex:1]);
//        NSLog(@"最后一个元素：%@", [array lastObject]);
//        
//        // 从索引2开始，取3个元素组成新集合
//        NSIndexSet *indexSet = [NSIndexSet indexSetWithIndexesInRange:NSMakeRange(2, 3)];
//        NSArray *arr1 = [array objectsAtIndexes:indexSet];
//        NSLog(@"%@", arr1);
//        
//        // 获取元素在集合中的位置
//        NSLog(@"疯狂Android讲义的位置为：%ld",
//              [array indexOfObject:@"疯狂Android讲义"]);
//        
//        // 获取元素在指定范围(2~5)内的位置
//        NSLog(@"在2~5范围疯狂Android讲义的位置为：%ld",
//              [array indexOfObject:@"疯狂Android讲义" inRange:NSMakeRange(2, 3)]);
//        
//        // 向数组末尾追加一个元素（原数组不变，返回新数组）
//        array = [array arrayByAddingObject:@"孙悟空"];
//        
//        // 向数组末尾追加另一个数组的所有元素（原数组不变，返回新数组）
//        array = [array arrayByAddingObjectsFromArray:
//                 [NSArray arrayWithObjects:@"宝玉", @"黛玉", nil]];
//        
//        // 遍历输出所有元素
//        for (int i = 0 ; i < array.count; i++) {
//            NSLog(@"%@", [array objectAtIndex:i]);
//            // 简化写法：NSLog(@"%@", array[i]);
//        }
//        
//        // 截取索引5开始的3个元素组成新数组
//        NSArray *arr2 = [array subarrayWithRange:NSMakeRange(5, 3)];
//    
//    }
//    return 0;
//}


//#import<Foundation/Foundation.h>
//
//@interface FKUser : NSObject
//@property (nonatomic, copy) NSString* name;
//@property (nonatomic, copy) NSString* pass;
//- (id) initWithName: (NSString*) aName pass: (NSString*) aPass;
//- (void) say: (NSString*) content;
//@end
//
//
//
//@implementation FKUser
//
//- (id)initWithName:(NSString *)name pass:(NSString *)pass
//{
//    if (self = [super init])
//    {
//        self->_name = name;
//        self->_pass = pass;
//    }
//    return self;
//}
//
//// say方法实现
//- (void)say:(NSString *)content
//{
//    NSLog(@"%@说：%@", self->_name, content);
//}
//
//- (BOOL)isEqual:(id)other
//{
//    if (self == other)
//    {
//        return YES;
//    }
//    if ([other class] == FKUser.class)
//    {
//        FKUser* target = (FKUser*)other;
//        return [self->_name isEqualToString:target->_name]
//        && [self->_pass isEqualToString:target->_pass];
//    }
//    return NO;
//}
//
//- (NSString *)description
//{
//    return [NSString stringWithFormat:
//            @"<FKUser[name=%@, pass=%@]>",
//            self->_name, self->_pass];
//}
//@end
//
////int main(int argc, char* argv[]) {
////    @autoreleasepool {
////        // 使用简化语法创建NSArray对象
////        NSArray* array = @[
////            [[FKUser alloc] initWithName:@"sun" pass:@"123"],
////            [[FKUser alloc] initWithName:@"bai" pass:@"345"],
////            [[FKUser alloc] initWithName:@"zhu" pass:@"654"],
////            [[FKUser alloc] initWithName:@"tang" pass:@"178"],
////            [[FKUser alloc] initWithName:@"niu" pass:@"155"]
////        ];
////        // 查找指定新FKUser对象在集合中的索引
////        FKUser* newUser = [[FKUser alloc] initWithName:@"zhu" pass:@"654"];
////        NSUInteger pos = [array indexOfObject:newUser];
////        NSLog(@"newName 的位置是: %ld", pos);
////        NSLog(@"%@", array[0]);
////    }
////    return 0;
////}
//
//
//int main(int argc, char * argv[])
//{
//    @autoreleasepool
//    {
//        // 使用简化语法创建NSArray对象
//        NSArray* array = @[
//            [[FKUser alloc] initWithName:@"sun" pass:@"123"],
//            [[FKUser alloc] initWithName:@"bai" pass:@"345"],
//            [[FKUser alloc] initWithName:@"zhu" pass:@"654"],
//            [[FKUser alloc] initWithName:@"tang" pass:@"178"],
//            [[FKUser alloc] initWithName:@"niu" pass:@"155"]
//        ];
//        
//        // 对集合元素整体调用方法
//        [array makeObjectsPerformSelector:@selector(say:)
//        withObject:@"下午好，NSArray 真强大!"];
//        
//        NSString* content = @"疯狂iOS讲义";
//        
//        // 迭代集合内指定范围内的元素，并使用该元素来执行代码块
//        [array enumerateObjectsAtIndexes:
//            [NSIndexSet indexSetWithIndexesInRange:NSMakeRange(2,2)]
//            options:NSEnumerationReverse
//        // 代码块的第一个参数代表正在遍历的集合元素
//        // 代码块的第二个参数代表正在遍历的集合元素的索引
//        // 代码块的第三个参数用于控制是否停止遍历，将该参数设置为NO即可停止遍历
//        usingBlock: ^(id obj, NSUInteger idx, BOOL *stop)
//        {
//            NSLog(@"正在处理第%ld个元素：%@", idx, obj);
//            [obj say:content];
//        }];
//    }
//}



//#import<Foundation/Foundation.h>
//// 定义比较函数，根据两个对象的intValue进行比较
//NSComparisonResult intSort(id num1, id num2, void *context)
//{
//    int v1 = [num1 intValue];
//    int v2 = [num2 intValue];
//    if (v1 < v2)
//        return NSOrderedAscending;
//    else if (v1 > v2)
//        return NSOrderedDescending;
//    else
//        return NSOrderedSame;
//}
//
//int main(int argc, char * argv[])
//{
//    @autoreleasepool{
//        // 初始化一个元素为NSString的NSArray对象
//        NSArray* array1 = @[@"Objective-C", @"C", @"C++",
//                            @"Ruby", @"Perl", @"Swift"];
//        // 使用集合元素的compare:方法进行排序
//        array1 = [array1 sortedArrayUsingSelector: @selector(compare:)];
//        NSLog(@"%@", array1);
//        
//        // 初始化一个元素为NSNumber的NSArray对象
//        NSArray* array2 = @[ [NSNumber numberWithInt:20],
//                             [NSNumber numberWithInt:12],
//                             [NSNumber numberWithInt:-8],
//                             [NSNumber numberWithInt:50],
//                             [NSNumber numberWithInt:19] ];
//        // 使用intSort函数进行排序
//        array2 = [array2 sortedArrayUsingFunction:intSort
//                                          context:nil];
//        NSLog(@"%@", array2);
//        
//        // 使用代码块对集合元素进行排序
//        NSArray* array3 = [array2 sortedArrayUsingComparator: ^(id obj1, id obj2) {
//           // 该代码块就是根据集合元素的 intValue 进行比较
//           if ([obj1 intValue] > [obj2 intValue])
//           {
//               return NSOrderedDescending;
//           }
//           if ([obj1 intValue] < [obj2 intValue])
//           {
//               return NSOrderedAscending;
//           }
//           return NSOrderedSame;
//       }];
//        NSLog(@"%@", array3);
//    }
//}



//#import <Foundation/Foundation.h>
//
//int main(int argc , char * argv[])
//{
//    @autoreleasepool
//    {
//        NSArray* array = @[@"Objective-C", @"C", @"C++",
//                            @"Ruby", @"Perl", @"Swift"];
//        // 获取NSArray的顺序枚举器
//        NSEnumerator* en = [array objectEnumerator];
//        id object;
//        while(object = [en nextObject])
//        {
//            NSLog(@"%@", object);
//        }
//        NSLog(@"------下面逆序遍历------");
//        // 获取 NSArray 的逆序枚举器
//        en = [array reverseObjectEnumerator];
//        while(object = [en nextObject])
//        {
//            NSLog(@"%@", object);
//        }
//    }
//}




//#import <Foundation/Foundation.h>
//
//int main(int argc, char * argv[])
//{
//    @autoreleasepool{
//        NSArray* array = @[@"Objective-C", @"C", @"C++",
//                                    @"Ruby", @"Perl", @"Swift"];
//        for(id object in array) {
//            NSLog(@"%@", object);
//        }
//    }
//}




//#import <Foundation/Foundation.h>
//
//// 定义一个函数，该函数用于把 NSArray 集合转换为字符串
//NSString* NSCollectionToString(NSArray* array)
//{
//    NSMutableString* result = [NSMutableString stringWithString:@"["];
//    for(id obj in array)
//    {
//        [result appendString:[obj description]];
//        [result appendString:@", "];
//    }
//    NSUInteger len = [result length]; // 获取字符串长度
//    // 去掉字符串最后的两个字符
//    [result deleteCharactersInRange:NSMakeRange(len - 2, 2)];
//    [result appendString:@"]"];
//    return result;
//}
//
//
//int main(int argc , char * argv[])
//{
//    @autoreleasepool
//    {
//        // 读取前面写入磁盘的文件，用文件内容来初始化NSMutableArray集合
//        NSMutableArray* array = [NSMutableArray arrayWithContentsOfFile:@"myFile.txt"];
//        [array addObject:@"疯狂iOS讲义"]; // 向集合最后添加一个元素
//        NSLog(@"最后追加一个元素后：%@", NSCollectionToString(array));
//        
//        // 使用NSArray向集合尾部添加多个元素
//        [array addObjectsFromArray:[NSArray arrayWithObjects:@"张飞", @"关羽", nil]];
//        NSLog(@"最后追加两个元素后：%@", NSCollectionToString(array));
//        
//        // 向集合的指定位置插入一个元素
//        [array insertObject:@"疯狂Ajax讲义" atIndex:2];
//        NSLog(@"在索引为2处插入一个元素后：%@", NSCollectionToString(array));
//        
//        // 使用NSArray向集合指定位置插入多个元素
//        [array insertObjects:[NSArray arrayWithObjects:@"武松", @"林冲", nil]
//                    atIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(3, 2)]];
//        NSLog(@"插入多个元素后：%@", NSCollectionToString(array));
//        
//        [array removeLastObject]; // 删除集合最后一个元素
//        NSLog(@"删除最后一个元素后：%@", NSCollectionToString(array));
//        
//        [array removeObjectAtIndex:5]; // 删除集合中指定索引处的元素
//        NSLog(@"删除索引为5的元素后：%@", NSCollectionToString(array));
//        
//        [array removeObjectsInRange:NSMakeRange(2, 3)]; // 删除索引为2-4处的元素
//        NSLog(@"删除索引为2-4处的元素后：%@", NSCollectionToString(array));
//        
//        // 替换索引为2处的元素
//        [array replaceObjectAtIndex:2 withObject:@"疯狂Android讲义"];
//        NSLog(@"替换索引为2处的元素后：%@", NSCollectionToString(array));
//    }
//}


#import<Foundation/Foundation.h>
//// 创建
//int main(int argc, char* argv[]) {
//    @autoreleasepool {
//        NSArray* array = [NSArray array];
//        NSLog(@"%@", array);
//        
//        NSArray* array1 = [NSArray arrayWithContentsOfFile: @"myFile.txt"];
//        NSLog(@"%@", array1);
//        
//        NSArray* array2 = [[NSArray alloc] initWithContentsOfFile: @"myFile.txt"];
//        NSLog(@"%@", array2);
//        
//        NSArray* array3 = [NSArray arrayWithObject:@"hello"];
//        NSLog(@"%@", array3);
//        
//        NSArray* array4 = [[NSArray alloc] initWithObjects:@"world", nil];
//        NSLog(@"%@", array4);
//        
//        NSArray* array5 = [NSArray arrayWithObjects: @"xinyan", nil];
//        NSLog(@"%@", array5);
//        
//        NSArray* array6 = @[@"hello", @"xinyan", @"鑫研"];
//        NSLog(@"%@", array6);
//    }
//    
//    return 0;
//}

int main(int argc, char* argv[]) {
    @autoreleasepool {
        NSArray* array = [[NSArray alloc] initWithObjects: @"hello", @"world", @"xinyan", @"iOS", @"learning", nil];
        // 获取数组个数
        NSLog(@"%ld", [array count]);
        
        // 访问指定索引的元素
        NSLog(@"first: %@", [array objectAtIndex: 0]);
        // 访问最后一个元素
        NSLog(@"last: %@", [array lastObject]);
        
        // 获取元素在数组中的位置
        NSString* a = @"xinyan";
        NSLog(@"%ld", [array indexOfObject: a]);
        
        // 向末尾追加一个元素
        array = [array arrayByAddingObject: a];
        NSLog(@"%@", array);
        
        // 向末尾追加多个元素
        array = [array arrayByAddingObjectsFromArray: [NSArray arrayWithObjects: @"hello world", nil]];
        NSLog(@"%@", array);
    }

    return 0;
}




