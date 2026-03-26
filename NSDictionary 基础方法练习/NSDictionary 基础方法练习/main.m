//
//  main.m
//  NSDictionary 基础方法练习
//
//  Created by lose_sea on 2026/3/26.
//

#import <Foundation/Foundation.h>

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        // insert code here...
//        NSLog(@"Hello, World!");
//    }
//    return EXIT_SUCCESS;
//}
//



int main(int argc, char* argv[]) {
    @autoreleasepool {
        NSDictionary* dic1 = [NSDictionary dictionaryWithObject: @"hello" forKey: @"1"];
        NSLog(@"%@", dic1);
        
        NSDictionary* dic2 = [NSDictionary dictionaryWithObjectsAndKeys:@"hello", @1, @"xinyan", @2, nil];
        NSLog(@"%@", dic2);
        
        NSDictionary* dic3 = [[NSDictionary alloc] initWithObjects: [NSArray arrayWithObjects: @"hello", @"xinyan", nil] forKeys: [NSArray arrayWithObjects: @1, @2, nil]];
        NSLog(@"%@", dic3);
        
        NSDictionary* dic4 = @{@1: @"hello", @2: @"world"};
        NSLog(@"%@" ,dic4);
        
        NSLog(@"%lu", dic4.count);
        NSLog(@"%@", dic4.allKeys);
        NSLog(@"%@", dic4.allValues);
        
        NSLog(@"%@", [dic4 objectForKey: @1]);
        
        [dic4 enumerateKeysAndObjectsUsingBlock: ^(id key, id value, BOOL* stop) {
            NSLog(@"%@ 的值为 %@", key, value);
        }];
        NSLog(@"%@" ,dic4);
        
        NSDictionary* dic5 = @{@1: @"hello", @2: @"xinyan", @3: @"girl", @4: @"dog"};
        NSLog(@"%@", dic5);
        NSArray* arr = [dic5 keysSortedByValueUsingComparator: ^(id value1, id value2) {
            if ([value1 length] > [value2 length]) {
                return NSOrderedAscending;
            } else if ([value1 length] < [value2 length]) {
                return NSOrderedDescending;
            } else {
                return NSOrderedSame;
            }
        }];
        NSLog(@"%@", arr);
        
        
    }
    return 0;
}



