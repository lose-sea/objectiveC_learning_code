//
//  main.m
//  NSSet 基础方法练习
//
//  Created by lose_sea on 2026/3/25.
//

#import <Foundation/Foundation.h>

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        // insert code here...
//        NSLog(@"Hello, World!");
//    }
//    return EXIT_SUCCESS;
//}

// 全局函数, 将集合转换为字符串
NSString* NSCollectionToString(id collection) {
    NSMutableString* result = [NSMutableString stringWithString: @"["];
    for (id obj in collection) {
        [result appendString: obj];
        [result appendString: @", "];
    }
    NSUInteger len = [result length];
    [result deleteCharactersInRange: NSMakeRange(len - 2, 2)];
    [result appendString: @"]"];
    return result;
}

int main(int argc, char* argv[]) {
    @autoreleasepool {
        // 创建
        NSSet* set1 = [NSSet setWithObjects: @"hello", @"xinyan", nil];
        NSLog(@"%@", NSCollectionToString(set1));
        
        // 添加
        set1 = [set1 setByAddingObject: @"world"];
        NSLog(@"%@", NSCollectionToString(set1));
        
        NSSet *set2 = [NSSet setWithObjects: @"girl", @"hello", @"xinyan", nil];
        set1 = [set1 setByAddingObjectsFromSet: set2];
        NSLog(@"%@", NSCollectionToString(set1));
        
        
        // 判断
        BOOL p1 = [set1 intersectsSet: set2]; // 交集
        
        BOOL p2 = [set1 isSubsetOfSet: set2];   // 子集
        
        
        // 过滤
        NSSet* filteredSet = [set1 objectsPassingTest: ^(id obj, BOOL* stop) {
            return (BOOL)([obj length] > 4);
        }];
        NSLog(@"%@", NSCollectionToString(filteredSet));
        
        NSMutableSet *set3 = [NSMutableSet setWithSet: set1];
        [set3 addObjectsFromArray: [NSArray arrayWithObjects: @"hello", @"xinyan", @"nihao", nil]];
        NSLog(@"%@", NSCollectionToString(set3));
        // 删除
        [set3 removeObject: @"xinyan"];
        NSLog(@"%@", NSCollectionToString(set3));
        
        // 并集, 交集, 差集
        NSSet* set4 = [NSSet setWithObjects: @"cat", @"hello", @"pig", nil];
        [set3 unionSet: set4];
        NSLog(@"%@", NSCollectionToString(set3));
        
        [set3 intersectSet: set4];
        NSLog(@"%@", NSCollectionToString(set3));
        
        [set3 minusSet: set1];
        NSLog(@"%@", NSCollectionToString(set3));
        
        
        NSCountedSet* set5 = [[NSCountedSet alloc] initWithObjects: @"hello", @"xinyan", @"world", nil];
        [set5 addObject: @"hello"];
        NSLog(@"%lu", (unsigned long)[set5 countForObject: @"hello"]);
        
        NSOrderedSet* set6 = [NSOrderedSet orderedSetWithSet: set5];
        NSLog(@"%@", [set6 objectAtIndex: 1]);
        
        NSLog(@"%lu", [set6 indexOfObject: @"hello"]);
        
        NSIndexSet* indexset = [set6 indexesOfObjectsPassingTest: ^ (id obj, NSUInteger idx, BOOL* stop) {
            return (BOOL)([obj length] > 4);
        }];
        NSLog(@"%@", indexset);
    }
    return 0;
}
