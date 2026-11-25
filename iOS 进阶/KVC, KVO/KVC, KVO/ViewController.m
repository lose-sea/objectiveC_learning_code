//
//  ViewController.m
//  KVC, KVO
//
//  Created by lose_sea on 2026/11/23.
//

#import "ViewController.h"
#import "Children.h"

@interface ViewController ()

@property (nonatomic, strong) NSString* firstName;
@property (nonatomic, assign) NSUInteger age;


@property (nonatomic, strong) Children* child01;
@property (nonatomic, strong) Children* child02;

@end


static void* child01Context = &child01Context;
static void* child02Context = &child02Context;


@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    
//    [self setValue: @"xinyan" forKey: @"firstName"];
//    NSLog(@"%@", self.firstName);
//    NSLog(@"%@", [self valueForKey: @"firstName"]);
    
//    self.child01 = [Children new];
    
    
//    [self.child01 setValue: @"xinyan" forKey: @"firstName"];
//    [self.child01 setValue: @34 forKey: @"age"];
    
//    NSLog(@"%@", self.child01);
    
    
    self.child01 = [Children new];
    self.child02 = [Children new];
    
//    [self setValue: @"xinyan" forKeyPath: @"child01.firstName"];
//    [self setValue: [NSNumber numberWithInt: 18] forKeyPath: @"child01.age"];
//    NSLog(@"%@", self);
//    
//    NSLog(@"%@", [self valueForKeyPath: @"child01.firstName"]);
//    NSLog(@"%d", [[self valueForKeyPath: @"child01.age"] unsignedIntValue]);
    
    
}

- (NSString*) description {
    return [NSString stringWithFormat: @"child01: %@, child02: %@", self.child01, self.child02];
}


- (void) viewWillAppear: (BOOL) animated {
    [super viewWillAppear: animated];
    [self.child01 addObserver: self forKeyPath: @"firstName" options: NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context: NULL];
    [self.child01 addObserver: self forKeyPath: @"age" options: NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context: NULL];
    
    
    // 添加观察者后改变值 验证是否可以观察到值变化
        [self.child01 setValue:@"xinyan" forKey:@"firstName"];
        [self.child01 setValue:[NSNumber numberWithUnsignedInteger:23] forKey:@"age"];
    
    // 添加观察者
    [self.child01 addObserver: self forKeyPath: @"fullName" options: NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context: child01Context];
    
    self.child01.firstName = @"xinyan";
    self.child01.lastName = @"zhang";
    
    
    // 对数组添加观察
    [self.child01 addObserver: self forKeyPath: @"cousins.array" options: NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context: NULL];
    
    [self.child01.cousins insertObject: @"Antony" inArrayAtIndex: 0];
    [self.child01.cousins insertObject: @"Julia" inArrayAtIndex: 1];
    [self.child01.cousins replaceObjectInArrayAtIndex: 0 withObject: @"Ben"];
    
}





- (void) observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
//    if ([keyPath isEqualToString: @"firstName"]) {
//        NSLog(@"The name of the child was changed. \n %@", change);
//    } else if ([keyPath isEqualToString: @"age"]) {
//        NSLog(@"The new value is %@, \n The old value is %@", [change valueForKey: NSKeyValueChangeNewKey], [change valueForKey: NSKeyValueChangeOldKey]);
//    }
    
    if (context == child01Context) {
        if ([keyPath isEqualToString: @"fullName"]) {
//            NSLog(@"The fullname of First child was change.\n%@", change);
        }
    } else if ([keyPath isEqualToString: @"cousins.array"] && [object isKindOfClass: [Children class]]) {
        NSLog(@"cousin.array %@", change);
    } else {
//        [super observeValueForKeyPath: keyPath ofObject: object change:change context:context];
    }
    
}


- (void) viewWilldisappear: (BOOL)animated {
    [super viewWillDisappear: animated];
    
    // 移除观察者
    [self.child01 removeObserver: self forKeyPath:@"firstName" context: child01Context];
    [self.child01 removeObserver: self forKeyPath: @"age" context: child01Context];
    [self.child01 removeObserver: self forKeyPath: @"cousins.array" context: NULL];
    
    NSLog(@"移除观察者"); 
}


@end

