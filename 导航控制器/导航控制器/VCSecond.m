//
//  VCSecond.m
//  导航控制器
//
//  Created by lose_sea on 2026/4/13.
//

#import "VCSecond.h"
#import "VCThird.h"

@interface VCSecond ()

@end

@implementation VCSecond

- (void) test01 {
    self.view.backgroundColor = [UIColor systemRedColor];
    
    self.navigationItem.title = @"视图二";
    
    UIBarButtonItem* next = [[UIBarButtonItem alloc] initWithTitle: @"下一级" style: UIBarButtonItemStylePlain target: self action: @selector(pressNext)];
    
    self.navigationItem.rightBarButtonItem = next;
}

    
-(void) pressNext {
    VCThird* vcThird = [[VCThird alloc] init];
    
    [self.navigationController pushViewController: vcThird animated:  YES];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self test01]; 
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
