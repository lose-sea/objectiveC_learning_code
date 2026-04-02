//
//  view02.m
//  UI_View
//
//  Created by lose_sea on 2026/4/2.
//

#import "view02.h"

@interface view02 ()

@end

@implementation view02

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
}
// 点击当前界面时
- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    // 使当前的控制器消失
    // p1: 是否有动画效果
    // p2: 结束后是否调用功能 block 块操作
    [self dismissViewControllerAnimated: YES completion: nil];
    
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
