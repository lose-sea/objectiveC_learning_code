//
//  Person.m
//  Runtime
//
//  Created by lose_sea on 2026/10/27.
//

#import "Person.h"
#import <objc/runtime.h>
static void log_eat(id self, SEL sel) {
    NSLog(@"这里方法解析加入 eat 实现");
}
@implementation Person
 
// 动态消息解析
//+ (BOOL) resolveInstanceMethod:(SEL)sel {
//    if (sel == @selector(eat)) {
//        NSLog(@"进入了 resolveInstanceMethod ");
//        class_addMethod(self,  sel, (IMP)log_eat,  "v@:");
//        return YES;
//    }
//    return [super resolveInstanceMethod: sel];
//    
//}



// 消息转发

// 快速转发
//- (id) forwardingTargetForSelector:(SEL)aSelector {
//    NSLog(@"进入消息快速转发");
//    if (aSelector == @selector(dance)) {
//        return [[Dancer alloc] init];
//    }
//    return [super forwardingTargetForSelector: aSelector]; 
//}




- (instancetype) init {
    self = [super init];
    if (self) {
        self.dancer = [[Dancer alloc] init];
    }
    return self;
}



// 完整消息转发
- (NSMethodSignature*) methodSignatureForSelector:(SEL)aSelector {
    NSLog(@"获取方法签名");
    if (aSelector == @selector(dance)) {
        return [self.dancer methodSignatureForSelector: aSelector];
    }
    return [super methodSignatureForSelector:aSelector];
}



- (void) forwardInvocation:(NSInvocation *)anInvocation {
    NSLog(@"执行消息转发");
    if ([self.dancer respondsToSelector: @selector(dance)]) {
        return [anInvocation invokeWithTarget: self.dancer];
    } else {
        [super forwardInvocation: anInvocation]; 
    }
}




@end
