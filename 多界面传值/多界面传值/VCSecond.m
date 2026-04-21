//
//  VCSecond.m
//  多界面传值
//
//  Created by lose_sea on 2026/4/21.
//

#import "VCSecond.h"

@interface VCSecond ()

@end

@implementation VCSecond

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self test01]; 
    
}

- (void) test01 {
    // 改变颜色的导航栏按钮
    UIBarButtonItem* btnChange = [[UIBarButtonItem alloc] initWithTitle: @"改变颜色" style: UIBarButtonItemStylePlain target: self action: @selector(pressBtn)];
    self.navigationItem.rightBarButtonItem = btnChange;
    
}

- (void) pressBtn {
    // 代理对象调用事件函数
    [_delegate changeColor: [UIColor redColor]];
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
