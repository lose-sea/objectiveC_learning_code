//
//  VCThird.m
//  导航控制器
//
//  Created by lose_sea on 2026/4/13.
//

#import "VCThird.h"

@interface VCThird ()

@end

@implementation VCThird

-(void) test01 {
    self.view.backgroundColor = [UIColor greenColor];
//    self.navigationController.navigationBar.tintColor = [UIColor redColor];
    
    self.title = @"视图三";
    
    UIBarButtonItem* btnLeft = [[UIBarButtonItem alloc] initWithTitle: @"上一级" style: UIBarButtonItemStylePlain target: self action: @selector(pressLeft)];
    
    self.navigationItem.leftBarButtonItem = btnLeft;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self test01];
}

- (void) pressLeft {
    // 返回到上一级
    [self.navigationController popViewControllerAnimated:YES];
    
    // 直接返回到根视图
    [self.navigationController popToRootViewControllerAnimated: YES];
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
