//
//  main.m
//  NSArray基础方法练习
//
//  Created by lose_sea on 2026/3/24.
//

#import <Foundation/Foundation.h>
#import"NSString + say.h"
//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        // insert code here...
//        NSLog(@"Hello, World!");
//    }
//    return EXIT_SUCCESS;
//}
// 排列函数 (降序)
NSComparisonResult intSort (id num1, id num2, void* context) {
    if ([num1 intValue] > [num2 intValue]) {
        return NSOrderedAscending;
    } else if ([num1 intValue] < [num2 intValue]) {
        return NSOrderedDescending;
    } else {
        return NSOrderedSame;
    }
}

int main(int argc, char* argv[]) {
    @autoreleasepool {
        // 创建
        NSArray* arr = [NSArray arrayWithObject: @"hello"];
        NSArray* arr1 = [NSArray arrayWithArray: arr];
        NSArray* arr2 = [NSArray arrayWithObjects: @"hello", @"xinyan", nil];
        NSArray* arr3 = [[NSArray alloc] initWithObjects: @"hello", @"world", @"xinyan", @"girl", @"stop", @"swift", @"python", nil];
        NSArray* arr4 = [[NSArray alloc] initWithArray: arr3];
        
        //访问
        NSLog(@"%@", [arr4 firstObject]);
        NSLog(@"%@", [arr4 lastObject]);
        NSLog(@"%@", [arr4 objectAtIndex: 3]);
        
        NSArray* arr5 = [arr4 objectsAtIndexes: [NSIndexSet indexSetWithIndexesInRange: NSMakeRange(1, 4)]];
        NSLog(@"%@", arr5);
        
        // 获取位置
        NSLog(@"xinyan 在 arr3 中的位置为 %ld", [arr3 indexOfObject: @"xinyan"]);
        
        // 获取在集合指定范围中的位置
        NSLog(@"%ld", [arr3 indexOfObject: @"xinyan" inRange: NSMakeRange(2 ,4)]); // 如果在指定范围找到就返回该元素的索引, 反之返回 NSNotFound
        
        // 追加
        arr = [arr3 arrayByAddingObject: @"java"];
        NSLog(@"%@", arr);
        arr = [arr arrayByAddingObjectsFromArray: [[NSArray alloc] initWithObjects: @"nihao", @"dog", nil]];
        NSLog(@"%@", arr);
        
        // 获取
        NSArray* arr6 = [arr subarrayWithRange: NSMakeRange(2, 5)];
        NSLog(@"%@", arr6);
        
        
        // 对集合整体调用方法
        [arr makeObjectsPerformSelector: @selector(say:) withObject: @"hello"];
        
        [arr enumerateObjectsWithOptions: NSEnumerationReverse usingBlock: ^ (id obj, NSUInteger idx, BOOL* stop) {
            NSLog(@"正在处理索引为 %ld 的元素, %@", idx, obj);
        }];
        
        [arr enumerateObjectsAtIndexes: [NSIndexSet indexSetWithIndexesInRange: NSMakeRange(5, 3)] options: 0 usingBlock: ^ (id obj, NSUInteger idx, BOOL *stop) {
            NSLog(@"正在处理第 %ld 个元素%@", idx, obj);
        }];
    
        
        
        // 排序
        NSArray* arr7 = [[NSArray alloc] initWithObjects: [NSNumber numberWithInt: 2],
                         [NSNumber numberWithInt: 4],
                         [NSNumber numberWithInt: 1],
                         [NSNumber numberWithInt: 65],
                         nil
        ];
        arr = [arr sortedArrayUsingSelector: @selector(compare:)];
        NSLog(@"%@", arr);
        
        // arr7 = [arr7 sortedArrayUsingSelector: @selector(compare:)];
        NSLog(@"%@", arr7);
        
        arr7 = [arr7 sortedArrayUsingFunction: intSort context: nil];
        NSLog(@"%@" ,arr7);
        
        arr7 = [arr7 sortedArrayUsingComparator: ^(id num1, id num2) {
            if ([num1 intValue] > [num2 intValue]) {
                return NSOrderedAscending;
            } else if ([num1 intValue] < [num2 intValue]) {
                return NSOrderedDescending;
            } else {
                return NSOrderedSame;
            }
        }];
        NSLog(@"%@", arr7);
        
        
        // 枚举器
        NSEnumerator* en = [arr objectEnumerator];
        id object;
        while (object = [en nextObject]) {
            NSLog(@"%@", object);
        }
        NSLog(@"\n\n");
        // 反向遍历
        en = [arr reverseObjectEnumerator];
        while (object = [en nextObject]) {
            NSLog(@"%@", object);
        }
        
        en = [arr objectEnumerator];
        object = [en nextObject];
        object = [en nextObject];
        object = [en allObjects];
        NSLog(@"%@", object);
        
        NSMutableArray* arr8 =[[NSMutableArray alloc] initWithArray: arr];
        NSLog(@"%@", arr8);
        [arr8 addObject: @"chick"];
        NSLog(@"%@", arr8);
        
        // 追加, 插入
        NSMutableArray* arr9 = [NSMutableArray arrayWithArray: arr8];
        NSLog(@"%@", arr9);
        [arr9 addObject: @"dream"];
        NSLog(@"%@", arr9);
        [arr9 addObjectsFromArray: arr2];
        NSLog(@"%@", arr9);
        [arr9 insertObjects: [NSArray arrayWithObjects: @"rong", @"jin", nil] atIndexes: [NSIndexSet indexSetWithIndexesInRange: NSMakeRange(3, 2)]];
        NSLog(@"%@", arr9);
        
        // 删除
        [arr9 removeLastObject];
        NSLog(@"%@", arr9);
        [arr9 removeObjectAtIndex: 4];
        [arr9 removeObjectsInRange: NSMakeRange(3, 4)];
        NSLog(@"%@", arr9);
        
        [arr9 replaceObjectAtIndex: 3 withObject: @"hello"];
        NSLog(@"%@", arr9);
        
        
        
    }
    return 0;
}
