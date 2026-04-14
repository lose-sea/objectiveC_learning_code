//
//  VCRoot.m
//  导航栏和工具栏
//
//  Created by lose_sea on 2026/4/14.
//

#import "VCRoot.h"
#import "VCSecond.h"

@interface VCRoot ()

@end

@implementation VCRoot
- (void) test01 {
    self.view.backgroundColor = [UIColor yellowColor];
    
////    设置导航度透明度
////    默认 YES : 透明
   self.navigationController.navigationBar.translucent = YES;
    
    // 设置导航栏风格颜色
    // 已经废弃
//    self.navigationController.navigationBar.barTintColor = [UIColor blueColor];
    UINavigationBarAppearance* appearance = [[UINavigationBarAppearance alloc] init];
    
    // 使用不透明背景
    [appearance configureWithOpaqueBackground];
    
    // 背景颜色
    appearance.backgroundColor = [UIColor redColor];
    
    // 标题颜色
    appearance.titleTextAttributes = @{
        NSForegroundColorAttributeName: [UIColor greenColor]
    };
    
    // 按钮颜色(返回按钮)
    appearance.buttonAppearance.normal.titleTextAttributes = @{
        NSForegroundColorAttributeName: [UIColor whiteColor]
    };
    
    // 应用
    UINavigationBar* navbar = self.navigationController.navigationBar;
    navbar.standardAppearance = appearance;
    navbar.scrollEdgeAppearance = appearance;
    navbar.compactAppearance = appearance;
    
    // 工具栏
    // 默认工具栏是隐藏的
    [self.navigationController setToolbarHidden: NO animated: YES];
    // 设置不透明
    self.navigationController.toolbar.translucent = NO;
    
    
    // 添加按钮
    UIBarButtonItem* item1 = [[UIBarButtonItem alloc] initWithTitle: @"点赞" style: UIBarButtonItemStylePlain target: self action: @selector(like)];
    
    UIBarButtonItem* item2 = [[UIBarButtonItem alloc] initWithTitle: @"关注" style: UIBarButtonItemStylePlain target: self action: @selector(like)];
    
    UIBarButtonItem* item3 = [[UIBarButtonItem alloc] initWithTitle: @"next" style: UIBarButtonItemStylePlain target: self action: @selector(next)];
    
    
    // 设置按钮固定间距
    UIBarButtonItem* space = [[UIBarButtonItem alloc] initWithBarButtonSystemItem: UIBarButtonSystemItemFixedSpace target: nil action: nil];
    space.width = 100;
    
    // 设置弹性间距
    UIBarButtonItem* flex = [[UIBarButtonItem alloc] initWithBarButtonSystemItem: UIBarButtonSystemItemFlexibleSpace target: nil action: nil];
    
    // 加入工具栏
    // 参数要求是NSArray
    self.toolbarItems = @[item1, flex, item2, flex, item3];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self test01];
}
- (void) like {
    NSLog(@"点赞");
}
- (void) next {
    VCSecond* vc = [[VCSecond alloc] init];
    [self.navigationController pushViewController: vc animated: YES]; 
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
