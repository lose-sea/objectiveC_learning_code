//
//  ViewController.m
//  RunLoop
//
//  Created by lose_sea on 2026/9/3.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, assign) NSInteger timeCount;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    NSRunLoop* runLoop = [NSRunLoop mainRunLoop]; 
    
//    NSTimer* timer = [NSTimer scheduledTimerWithTimeInterval: 1 target: self selector: @selector(sayHello) userInfo: nil repeats: YES];
    
//    NSTimer* timer = [NSTimer scheduledTimerWithTimeInterval: 1
//                                                      target: self
//                                                    selector: @selector(sayHello)
//                                                    userInfo: nil
//                                                     repeats: YES];
    
//    for (NSInteger i = 0; i < 4; i++) {
//        NSLog(@"xinyan");
//        sleep(2);
//    }
//    NSInteger num = 0;
//    scanf("%ld", &num);
//    printf("num = %ld", num);
    
//    NSLog(@"viewDidLoad 开始执行");
//    
//    self.timeCount = 0;
//    NSTimer* timer = [NSTimer scheduledTimerWithTimeInterval: 1
//                                                      target: self
//                                                    selector: @selector(sayHello)
//                                                    userInfo: nil
//                                                     repeats: YES];
    
//    NSRunLoop* runLoop = [NSRunLoop currentRunLoop];
//    NSLog(@"%@", runLoop);
    
    
    
//    NSThread* thread = [[NSThread alloc] initWithBlock:^{
//        
//        [[NSRunLoop currentRunLoop] addPort:
//               [NSPort port]
//               forMode:NSDefaultRunLoopMode];
//
//           [[NSRunLoop currentRunLoop] run];
//        
//    }];
    
    
    //  创建观察者
//    CFRunLoopObserverRef observer = CFRunLoopObserverCreateWithHandler(CFAllocatorGetDefault(), kCFRunLoopAllActivities, YES, 0, ^(CFRunLoopObserverRef observer, CFRunLoopActivity activity) {
//        NSLog(@"监听到RunLoop发生变化 -- %zu", activity);
//    });
//    
//    // 添加观察者到当前RunLoop中
//    CFRunLoopAddObserver(CFRunLoopGetCurrent(), observer, kCFRunLoopDefaultMode);
//    
//    
//    // 释放observer, 最后添加完成需要释放掉
//    CFRelease(observer);
    
    [self run]
    
}

void runIMP(id self, SEL _cmd) {
    NSLog(@"动态添加的 run 方法");
}

+ (BOOL)resolveInstanceMethod:(SEL)sel {
    if (sel == @selector(run)) {
        class_addMethod(
            self,
            sel,
            (IMP)runIMP,
            "v@:"
        );
        return YES;
    }

    return [super resolveInstanceMethod:sel];
}

- (void) sayHello {
    printf("hello world");
}


@end


//iOS: GCD进阶,全局队列与自定义队列
