//
//  main.m
//  协议和委托
//
//  Created by lose_sea on 2026/3/9.
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
//#define MAX_CACHE_LINE 10
//@protocol FKOutput
//// 定义协议的方法
//- (void) output;
//- (void) addData : (NSString*) msg;
//@end
//
//
//@protocol FKProductable
//- (NSDate*) getProduceTime;
//@end
//
//@protocol FKPrintable <FKOutput, FKProductable>
//- (NSString*) printColor;
//@end
//
//@interface FKPrinter : NSObject <FKPrintable>   // 遵守FKPrintable 协议
//@end
//
//// 为 FKPrinter 提供实现部分
//@implementation FKPrinter {
//    NSString* printData[MAX_CACHE_LINE]; // 使用数组记录所有需要缓存的打印数据
//    int dataNum;    // 记录当前需打印的作业数
//}
//- (void) output {
//    while (dataNum > 0) {
//        NSLog(@"打印机使用%@打印: %@", self.printColor, printData[0]);
//        dataNum--;
//        for (int i = 0; i < dataNum; i++) {
//            printData[i] = printData[i + 1];
//        }
//    }
//}
//- (void) addData: (NSString*) msg {
//    if (dataNum >= MAX_CACHE_LINE) {
//        NSLog(@"输出队列已满, 添加失败");
//    } else {
//        printData[dataNum++] = msg;
//    }
//}
//- (NSDate*) getProduceTime {
//    return [[NSDate alloc] init];
//}
//- (NSString*) printColor {
//    return @"red";
//}
//@end
//
//int main(int argc, char* argv[]) {
//    @autoreleasepool {
//        FKPrinter* printer = [[FKPrinter alloc] init];
//        // 调用FKPrinter 对象的方法
//        [printer addData: @"hello"];
//        [printer addData: @"hello"];
//        [printer output];
//        [printer addData:@"hello"];
//        [printer addData: @"hello2"];
//        [printer output];
//        // 创建一个FKPrinter对象, 当成FKProductable 使用
//        NSObject<FKProductable>* p = [[FKPrinter alloc] init];
//        // 调用FKProductable协议中定义的方法
//        NSLog(@"%@", p.getProduceTime);
//        // 创建一个FKPrinter对象, 当成FKOutput使用
//        id<FKOutput> out = [[FKPrinter alloc] init];
//        // 调用FKOutput协议中的方法
//        [out addData: @"孙悟空"];
//        [out addData: @"猪八戒"];
//        [out output];
//    }
//    return 0;
//}


#import<Foundation/Foundation.h>
@protocol FKOutput
@optional
- (void) output;
@required
- (void) addData: (NSString*) msg;
@end



