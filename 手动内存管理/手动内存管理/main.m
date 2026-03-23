////
////  main.m
////  手动内存管理
////
////  Created by lose_sea on 2026/3/9.
////
//
////#import <Foundation/Foundation.h>
////
////int main(int argc, const char * argv[]) {
////    @autoreleasepool {
////        // insert code here...
////        NSLog(@"Hello, World!");
////    }
////    return EXIT_SUCCESS;
////}
//
////#import<Foundation/Foundation.h>
////
////@interface FKItem : NSObject
////- (id) init;
////- (void) dealloc;
////@end
////
////@implementation FKItem
////- (id) init {
////    if (self == [super init]) {
////        NSLog(@"init方法中, 引用计数为: %ld", self.retainCount);
////    }
////    return self;
////}
////- (void) dealloc {
////    NSLog(@"销毁");
////    [super dealloc];
////}
////@end
////
////
////int main(int argc, const char * argv[]) {
////    @autoreleasepool {
////        // 调用 new 方法创建对象，该对象的引用计数为 1
////        FKItem *item = [FKItem new];
////        
////        NSLog(@"初始引用计数: %ld", item.retainCount);
////        
////        [item retain]; // 引用计数加 1，retainCount 为 2
////        NSLog(@"调用 retain 后: %ld", item.retainCount);
////        
////        [item retain]; // 引用计数加 1，retainCount 为 3
////        NSLog(@"调用 retain 后: %ld", item.retainCount);
////        
////        [item release]; // 引用计数减 1，retainCount 为 2
////        NSLog(@"调用 release 后: %ld", item.retainCount);
////        
////        [item retain]; // 引用计数加 1，retainCount 为 3
////        NSLog(@"调用 retain 后: %ld", item.retainCount);
////        
////        [item release]; // 引用计数减 1，retainCount 为 2
////        NSLog(@"调用 release 后: %ld", item.retainCount);
////        
////        [item release]; // 引用计数减 1，retainCount 为 1
////        NSLog(@"调用 release 后: %ld", item.retainCount);
////        
////        NSLog(@"即将执行最后一次 release...");
////        [item release]; // 引用计数减 1，retainCount 为 0，触发 dealloc
////        
////        // 注意：此处之后 item 已成野指针，严禁再调用 item.retainCount，否则会崩溃
////        // NSLog(@"%ld", item.retainCount); // 这行代码会导致程序崩溃，请勿启用
////    }
////    return 0;
////}
//
//
//
////#import<Foundation/Foundation.h>
////@interface FKItem : NSObject
////
////@end
////
////@interface FKUser : NSObject {
////    // 定义FKUser对象持有的FKItem对象
////    FKItem* _item;
////}
////- (void) setItem: (FKItem*) item;
////- (FKItem*) item;
////@end
////
////@implementation FKItem
////
////@end
////
////@implementation FKUser
////- (void) setItem: (FKItem*) item {
////    if (_item != item) {
////        // 让item 的引用计数加一
////        [item retain];
////        _item = item;
////    }
////}
////- (FKItem*) item {
////    return _item;
////}
////- (void) dealloc {
////    // 让_item的引用计数减一
////    [_item release];
////    NSLog(@"开始销毁 FKUser 对象");
////    [super dealloc];
////}
////@end
////
////int main(int argc, char* argv[]) {
////    // 调用 new 方法创建对象, 引用计数为1
////    FKItem* item = [FKItem new];
////    NSLog(@"创建出来的引用计数为 %ld", item.retainCount);
////    FKUser* user = [[FKUser alloc] init];
////    [user setItem: item];
////    NSLog(@"被FKUser对象持有后引用计数为 %ld", item.retainCount);
////    // main方法将item的引用计数减一, item的引用计数为1
////    [item release];
////    NSLog(@"调用 release 后的引用计数为 %ld", item.retainCount);
////    // user的引用计数减一, user的引用计数为 0
////    // 系统调用 user 的dealloc方法, 调用dealloc 方法时, 将会让 FKItem 的引用计数减一
////    // 这样 item 的应用计数变为 0, 系统会执行 item的dealloc 方法进行销毁
////    [user release];
////    return 0;
////}
//
////int main(int argc, char* argv[]) {
////    // 调用 new 方法创建对象, 引用计数为1
////    FKItem* item = [FKItem new];
////    NSLog(@"创建出来的引用计数为 %ld", item.retainCount);
////    FKUser* user = [[FKUser alloc] init];
////    [user setItem: item];
////    NSLog(@"被FKUser对象持有后引用计数为 %ld", item.retainCount);
////    // 重建一个新对象
////    FKItem* item2 = [FKItem new];
////    // 将item2作为参数传给setItem: 方法
////    [user setItem: item2];
////    // main方法将item的引用计数减一, item的引用计数为1
////    [item release];
////    // main方法将item2的引用计数加减一, item2的引用计数为 1
////    [item2 release];
////    NSLog(@"调用 release 后的引用计数为 %ld", item.retainCount);
////    // user的引用计数减一, user的引用计数为 0
////    // 系统调用 user 的dealloc方法, 调用dealloc 方法时, 将会让 FKItem 的引用计数减一
////    // 这样 item 的应用计数变为 0, 系统会执行 item的dealloc 方法进行销毁
////    [user release];
////    return 0;
////}
//
//
////- (void) setItem: (FKItem*) item {
////    if (_item != item) {
////        // 将_item引用的实例变量的引用计数减一
////        [_item release];
////        // 让item 的引用计数加一, 并赋给_item实例变量
////        _item = [item retain];
////    }
////}
//
////FKItem* productItem(void) {
////    FKItem* item = [FKItem new];  //引用计数为1
////    NSLog(@"返回之前的引用计数为 %ld", item.retainCount);
////    // 返回的对象的引用计数w为1
////    return item;
////}
////int main(int atgc, char* argv[]) {
////    // it的引用计数为 1
////    FKItem* it = productItem();
////    NSLog(@"%ld", it.retainCount);
////    // ...
////    // 程序执行完成后, 将 it(引用prodectItem()函数返回值)的引用计数减一
////    // 程序使用productItem()函数返回值完成后, 延迟销毁 it 所指向的对象
////    [it release];
////    return 0;
////}
//
//
////FKItem* productItem(void) {
////    FKItem* item = [FKItem new];   // 引用计数为1
////    // autorelease 不会改变对象的引用计数
////    // 但程序执行autorelease 方法时, 会将该对象添加到自动释放池中
////    return [item autorelease];
////}
////int main(int argc, char * argv[]) {
////    @autoreleasepool {
////        NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
////        // it的引用计数为1
////        FKItem* it = productItem();
////        // 接下来可以调用it的方法
////        NSLog(@"%ld", it.retainCount);
////        // ...
////        // 创建一个FKUser对象，并将它添加到自动释放池中
////        FKUser* user = [[[FKUser alloc] init] autorelease];
////        // 接下来可以调用user的方法
////        NSLog(@"%ld", user.retainCount);
////        // ...
////        // 系统将因为池的引用计数变为0而回收自动释放池
////        // 回收自动释放池时会调用池中所有对象的release方法
////        [pool release];
////    }
////    return 0;
////}
//
////NSMutableArray* array = [NSMutableArray arrayWithCapacity: 20]
//
//
////#import <Foundation/Foundation.h>
////
////int main(int argc, char* argv[]) {
////    NSString* str = [NSString new];
////    NSLog(@"%ld", [str retainCount]);  // 应该输出 1
////    return 0;
////}
//
//
////#import<Foundation/Foundation.h>
////
////@interface FKItem : NSObject
////- (id) init;
////- (void) dealloc;
////@end
////
////@implementation FKItem
////- (id) init {
////    if (self == [super init]) {
////        NSLog(@"init方法中, 引用计数为: %ld", self.retainCount);
////    }
////    return self;
////}
////- (void) dealloc {
////    NSLog(@"销毁");
////    [super dealloc];
////}
////@end
////
////
////int main(int argc, const char * argv[]) {
////    @autoreleasepool {
////        // 调用 new 方法创建对象，该对象的引用计数为 1
////        FKItem *item = [FKItem new];
////        
////        NSLog(@"初始引用计数: %ld", item.retainCount);
////
////        [item retain]; // 引用计数加 1，retainCount 为 2
////        NSLog(@"调用 retain 后: %ld", item.retainCount);
////        
////        [item retain]; // 引用计数加 1，retainCount 为 3
////        NSLog(@"调用 retain 后: %ld", item.retainCount);
////        
////        [item release]; // 引用计数减 1，retainCount 为 2
////        NSLog(@"调用 release 后: %ld", item.retainCount);
////        
////        [item retain]; // 引用计数加 1，retainCount 为 3
////        NSLog(@"调用 retain 后: %ld", item.retainCount);
////        
////        [item release]; // 引用计数减 1，retainCount 为 2
////        NSLog(@"调用 release 后: %ld", item.retainCount);
////        
////        [item release]; // 引用计数减 1，retainCount 为 1
////        NSLog(@"调用 release 后: %ld", item.retainCount);
////        
////        NSLog(@"即将执行最后一次 release...");
////        [item release]; // 引用计数减 1，retainCount 为 0，触发 dealloc
////        
////        // 注意：此处之后 item 已成野指针，严禁再调用 item.retainCount，否则会崩溃
////        // NSLog(@"%ld", item.retainCount); // 这行代码会导致程序崩溃，请勿启用
////    }
////    return 0;
////}
//
//
//
//
////#import<Foundation/Foundation.h>
////
////@interface FKItem : NSObject
////- (id) init;
////- (void) dealloc;
////@end
////
////@implementation FKItem
////- (id) init {
////    if (self == [super init]) {
////        NSLog(@"init方法中, 引用计数为: %ld", self.retainCount);
////    }
////    return self;
////}
////- (void) dealloc {
////    NSLog(@"销毁");
////    [super dealloc];
////}
////@end
//
//#import<Foundation/Foundation.h>
//@interface FKItem : NSObject
//
//@end
//
//@interface FKUser : NSObject {
//    // 定义FKUser对象持有的FKItem对象
//    FKItem* _item;
//}
//- (void) setItem: (FKItem*) item;
//- (FKItem*) item;
//@end
//
//@implementation FKItem
//
//@end
//
//@implementation FKUser
//- (void) setItem: (FKItem*) item {
//    if (_item != item) {
//        // 让item 的引用计数加一
//        [item retain];
//        _item = item;
//    }
//}
//- (FKItem*) item {
//    return _item;
//}
//- (void) dealloc {
//    // 让_item的引用计数减一
//    [_item release];
//    NSLog(@"开始销毁 FKUser 对象");
//    [super dealloc];
//}
//@end
//
//int main(int argc, char* argv[]) {
//    // 调用 new 方法创建对象, 引用计数为1
//    FKItem* item = [FKItem new];
//    NSLog(@"创建出来的引用计数为 %ld", item.retainCount);
//    FKUser* user = [[FKUser alloc] init];
//    [user setItem: item];
//    NSLog(@"被FKUser对象持有后引用计数为 %ld", item.retainCount);
//    // main方法将item的引用计数减一, item的引用计数为1
//    [item release];
//    NSLog(@"调用 release 后的引用计数为 %ld", item.retainCount);
//    // user的引用计数减一, user的引用计数为 0
//    // 系统调用 user 的dealloc方法, 调用dealloc 方法时, 将会让 FKItem 的引用计数减一
//    // 这样 item 的应用计数变为 0, 系统会执行 item的dealloc 方法进行销毁
//    [user release];
//    return 0;
//}
//


