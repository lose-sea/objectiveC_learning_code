//
//  Handler.m
//  Block
//
//  Created by lose_sea on 2026/11/11.
//

#import "Handler.h"

@implementation Handler
- (void)addNumber:(int)number1 withNumber:(int)number2 andCompletionHandler:(void (^)(int))completionHandler{
    
    NSLog(@"开始计算");
    int result = number1 + number2;
    NSLog(@"计算完成");
    completionHandler(result);
    
    NSLog(@"方法执行结果");
}


@end
