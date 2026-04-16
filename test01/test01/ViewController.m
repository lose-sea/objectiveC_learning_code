//
//  ViewController.m
//  test01
//
//  Created by lose_sea on 2026/4/16.
//

#import "ViewController.h"
#import <Masonry/Masonry.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView* view = [[UIView alloc] init];
    view.backgroundColor = [UIColor systemCyanColor];
    view.frame = CGRectMake(10, 10, 100, 100); 
    [self.view addSubview: view];
    // Do any additional setup after loading the view.
}


@end
