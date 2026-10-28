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
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
//    Person* person = [[Person alloc] init];
//    [person eat];

    
//    [person dance];
    
    
    Person* person = [[Person alloc] init];
    Method* method01 = class_getInstanceMethod(Person.class, @selector(eat));
    
    Method* method02 = class_getInstanceMethod(Person.class, @selector(run)); 
    
    
    
}


@end
