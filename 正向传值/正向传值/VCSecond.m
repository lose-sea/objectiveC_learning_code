//
//  VCSecond.m
//  正向传值
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
    UILabel* label = [[UILabel alloc] init];
    label.text = self.text;
    
    label.frame = CGRectMake(100, 100, 100, 40);
    label.backgroundColor = [UIColor systemCyanColor];
    
    [self.view addSubview: label]; 
}

- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
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
