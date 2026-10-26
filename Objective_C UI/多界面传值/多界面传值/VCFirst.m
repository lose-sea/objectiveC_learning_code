//
//  VCFirst.m
//  多界面传值
//
//  Created by lose_sea on 2026/4/21.
//

#import "VCFirst.h"
#import "VCSecond.h"

@interface VCFirst ()

@end

@implementation VCFirst

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [self test01];
}

- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    VCSecond* vc = [[VCSecond alloc] init];
    vc.view.backgroundColor = [UIColor orangeColor];
    
    vc.delegate = self; 
    // 推出视图控制器二
    [self.navigationController pushViewController: vc animated: YES];
}

- (void) changeColor:(UIColor *)color {
    self.view.backgroundColor = color;
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
