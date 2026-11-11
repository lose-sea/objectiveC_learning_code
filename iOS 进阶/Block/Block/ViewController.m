//
//  ViewController.m
//  Block
//
//  Created by lose_sea on 2026/11/11.
//

#import "ViewController.h"
#import "Handler.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Handler* handler = [[Handler alloc] init];
    [handler addNumber: 3 withNumber: 5 andCompletionHandler: ^(int result) {
        NSLog(@"Handler %i", result); 
    }];
}


@end
