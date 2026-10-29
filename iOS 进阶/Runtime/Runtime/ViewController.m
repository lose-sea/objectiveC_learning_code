//
//  ViewController.m
//  Runtime
//
//  Created by lose_sea on 2026/10/27.
//

#import "ViewController.h"
#import "Person.h"

#import <objc/runtime.h>
//#import "Dancer.h"
#import "Student.h"
#import "Father.h"
#import "People.h"
#import "People+Info.h"
@interface ViewController ()

@end

@implementation ViewController

static void studentRun(id self, SEL _cmd) {
    NSLog(@"Sun 在 run");
    NSLog(@"%@", [self class]);
}

static void replaceRun(id self, SEL _cmd) {
    NSLog(@"replace 的 run");
}
    
static void newStudentRun(id self, SEL _cmd) {
    NSLog(@"new run");
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
//    Person* person = [[Person alloc] init];
//    [person eat];

    
//    [person dance];
    
    
    // 方法交换
//    Person* person = [[Person alloc] init];
//    Method method01 = class_getInstanceMethod(Person.class, @selector(eat));
//    
//    Method method02 = class_getInstanceMethod(Person.class, @selector(run));
//    
//    
//    method_exchangeImplementations(method01,  method02);
//    
//    
//    [person run];
//    [person eat]; 

    
    
    
    
//    Father* father = [[Father alloc] init];
//    Student* stu = [[Student alloc] init];
//    [stu run];
//    
//    class_addMethod(Student.class, @selector(run), (IMP)studentRun, "v@:");
//    [stu run];
//    
//    class_replaceMethod(Student.class, @selector(run), (IMP)replaceRun, "v@:");
//    [stu run];


//    Method method = class_getInstanceMethod(Student.class, @selector(run));
//    
//    [father run];
//    IMP oldIMP = method_setImplementation(method,  (IMP)newStudentRun);
//    [father run];
//    [stu run];
    
    
    
    People* people = [[People alloc] init];
    people.age = 10;
    NSLog(@"%ld", people.age); 
}


@end
