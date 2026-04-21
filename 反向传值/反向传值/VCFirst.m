//
//  VCFirst.m
//  反向传值
//
//  Created by lose_sea on 2026/4/21.
//

#import "VCFirst.h"

@interface VCFirst ()

@end

@implementation VCFirst

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self test01];
}

- (void) test01 {
    UIBarButtonItem* btn = [[UIBarButtonItem alloc] initWithTitle: @"next" style: UIBarButtonItemStylePlain target: self action: @selector(pressBtn)];
    self.navigationItem.rightBarButtonItem = btn;
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
