//
//  ViewController.m
//  Runtime
//
//  Created by lose_sea on 2026/10/27.
//

#import "ViewController.h"
#import "Person.h"
//#import "Dancer.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    Person* person = [[Person alloc] init];
    [person eat];

    
//    [person dance];
}


@end
