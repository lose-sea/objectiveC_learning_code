//
//  VCRoot.m
//  导航控制器
//
//  Created by lose_sea on 2026/4/13.
//

#import "VCRoot.h"

@interface VCRoot ()

@end

@implementation VCRoot
- (void) test01 {
    self.view.backgroundColor = [UIColor systemYellowColor];
    
    // 设置导航栏的标题
    self.title = @"根视图控制器";
    // 设置导航元素项目的标题
    self.navigationItem.title = @"title";
    
    // 创建一个导航栏左侧的按钮
    // 参数 1: 按钮的文字
    // 参数 2: 按钮风格
    // 参数 3: 事件拥有者
    // 参数 4: 按钮事件
    UIBarButtonItem* leftBtn = [[UIBarButtonItem alloc] initWithTitle: @"左侧" style: UIBarButtonItemStyleProminent target: self action: @selector(pressLeft)];
    
    self.navigationItem.leftBarButtonItem = leftBtn;
    
    UIBarButtonItem* rightBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem: UIBarButtonSystemItemAdd target: self action: @selector(pressRight)];
    
    self.navigationItem.rightBarButtonItem = rightBtn;
    
    UILabel* label = [[UILabel alloc] initWithFrame: CGRectMake(10, 10, 50, 40)];
    label.text = @"test";
    
    label.textAlignment = NSTextAlignmentCenter;
    
    // 将任何类型的控件添加到导航按钮的方法
    UIBarButtonItem* item03 = [[UIBarButtonItem alloc] initWithCustomView: label];
    
    NSArray* arrayBtn = [NSArray arrayWithObjects: rightBtn, item03, nil];
    
    self.navigationItem.rightBarButtonItems = arrayBtn;
}

- (void) test02 {
    
    // 设置导航度透明度
    // 默认 YES : 透明
    self.navigationController.navigationBar.translucent = NO;
    self.view.backgroundColor = [UIColor systemCyanColor];
    
    
    
    self.title = @"hello";
    
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [self test01];
    [self test02];
 
    
    
}

- (void) pressLeft {
    NSLog(@"左侧按钮被按下");
}
- (void) pressRight {
    NSLog(@"右侧按钮被按下");
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
