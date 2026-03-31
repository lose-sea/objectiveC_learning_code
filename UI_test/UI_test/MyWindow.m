//
//  MyWindow.m
//  UI_test
//
//  Created by lose_sea on 2026/3/31.
//

#import "MyWindow.h"

@interface MyWindow ()

@end

@implementation MyWindow

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton* btn = [UIButton buttonWithType: UIButtonTypeRoundedRect];
     
    btn.frame = CGRectMake(100, 100, 80, 40);
    btn.backgroundColor = [UIColor systemRedColor];
    self.view.backgroundColor = [UIColor systemBlueColor]; 
    [self.view addSubview:btn];
    // Do any additional setup after loading the view.
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
