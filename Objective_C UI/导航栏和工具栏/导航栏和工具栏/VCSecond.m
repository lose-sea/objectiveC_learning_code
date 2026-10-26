//
//  VCSecond.m
//  导航栏和工具栏
//
//  Created by lose_sea on 2026/4/14.
//

#import "VCSecond.h"

@interface VCSecond ()

@end

@implementation VCSecond

- (void) test01 {
    self.view.backgroundColor = [UIColor greenColor];
    
    UIBarButtonItem* back = [[UIBarButtonItem alloc] initWithTitle: @"back" style: UIBarButtonItemStylePlain target: self action: @selector(back)];
    
    self.toolbarItems = @[back];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self test01];
}
- (void) back {
    [self.navigationController popViewControllerAnimated: YES]; 
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
