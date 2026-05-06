//
//  Searchpage.m
//  zara
//
//  Created by lose_sea on 2026/5/5.
//

#import "Searchpage.h"

@interface Searchpage ()
@property (nonatomic, strong) UISegmentedControl* segmentedControl;
@end

@implementation Searchpage

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"搜索";
    self.view.backgroundColor = [UIColor blackColor];
    
    [self setNavigationController];
   
//    //创建系统风格按钮
//    UITabBarItem* tabbarItem = [[UITabBarItem alloc] initWithTitle: @"搜索" image: [UIImage systemImageNamed: @"magnifyingglass"] selectedImage: [UIImage systemImageNamed: @"magnifyingglass.fill"]];
//    self.tabBarItem = tabbarItem;
    
//    UITabBarItem* tabbarItem = [[UITabBarItem alloc] initWithTabBarSystemItem: UITabBarSystemItemSearch tag: 1];
//    self.tabBarItem = tabbarItem;
    
   
}

// 设置导航控制器
- (void) setNavigationController {

    
//    _segControl = [[UISegmentedControl alloc] init];
//    _segControl.backgroundColor = [UIColor systemCyanColor];
//    _segControl.frame = CGRectMake(100, 300, 200, 50);
//    
//    [_segControl insertSegmentWithTitle: @"0元" atIndex: 0 animated: NO];
//    [_segControl insertSegmentWithTitle: @"2元" atIndex: 1 animated: NO];
//    [_segControl insertSegmentWithTitle: @"4元" atIndex: 2 animated: NO];
//    // 设置默认索引
//    _segControl.selectedSegmentIndex = 2;
//    // 设置滑块的颜色
//    _segControl.selectedSegmentTintColor = [UIColor greenColor];
//    
//    
////    UISegmentedControl* seg01 = [[UISegmentedControl alloc] init];
////    seg01.frame = CGRectMake(100, 400, 200, 200);
////    seg01.backgroundColor = [UIColor systemGrayColor];
////    [seg01 insertSegmentWithTitle: @"5元" atIndex: 0 animated: NO];
////    [seg01 insertSegmentWithTitle: @"5元" atIndex: 1 animated: NO];
////    [seg01 insertSegmentWithTitle: @"10元" atIndex: 2 animated: NO];
//     
//    
////    [_segControl addTarget: self action: @selector(segChange) forControlEvents: UIControlEventValueChanged];
//    
//    [self.view addSubview: _segControl];
    
    
    
    
    
    
    // 在导航栏设置分栏控制器
    NSArray *items = @[@"女士", @"儿童", @"男士"];
    
    self.segmentedControl = [[UISegmentedControl alloc] initWithItems: items];
    
    // 背景颜色
    self.segmentedControl.backgroundColor = [UIColor whiteColor];
    
    // 设置默认选中的索引
    self.segmentedControl.selectedSegmentIndex = 0;
    
    // 分栏控件的宽度可变, 高度不可变
    self.segmentedControl.frame = CGRectMake(0, 20, self.view.bounds.size.width, 40);
    
//    // 1. 设置【没选中】的文字颜色 → 黑色
//    [self.segmentedControl setTitleTextAttributes:@{
//        NSForegroundColorAttributeName: [UIColor whiteColor]
//    } forState: UIControlStateNormal];
//
//    // 2. 设置【选中】的文字颜色 → 白色
//    [self.segmentedControl setTitleTextAttributes:@{
//        NSForegroundColorAttributeName: [UIColor redColor]
//    } forState: UIControlStateSelected];
//    
    // 设置滑块颜色
    self.segmentedControl.selectedSegmentTintColor = [UIColor greenColor];
    
    
    // 设置分栏控件的文字颜色
    self.segmentedControl.backgroundColor = [UIColor blackColor];
    
//    // 设置导航栏标题视图
//    self.navigationItem.titleView = self.segmentedControl;
    self.segmentedControl.frame = CGRectMake(100, 200, 200, 40);
    [self.view addSubview: self.segmentedControl]; 
    
}

- (void) segmentChanged {
    
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
