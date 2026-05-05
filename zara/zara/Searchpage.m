//
//  Searchpage.m
//  zara
//
//  Created by lose_sea on 2026/5/5.
//

#import "Searchpage.h"

@interface Searchpage ()

@end

@implementation Searchpage

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"搜索";
    self.view.backgroundColor = [UIColor systemCyanColor];
    
    [self setNavigationController];
   
//    //创建系统风格按钮
//    UITabBarItem* tabbarItem = [[UITabBarItem alloc] initWithTitle: @"搜索" image: [UIImage systemImageNamed: @"magnifyingglass"] selectedImage: [UIImage systemImageNamed: @"magnifyingglass.fill"]];
//    self.tabBarItem = tabbarItem;
    
//    UITabBarItem* tabbarItem = [[UITabBarItem alloc] initWithTabBarSystemItem: UITabBarSystemItemSearch tag: 1];
//    self.tabBarItem = tabbarItem;
    
   
}

// 设置导航控制器
- (void) setNavigationController {
    // 在导航栏设置分栏控制器
    NSArray *items = @[@"女士", @"儿童", @"男士"];
        UISegmentedControl *segmentControl = [[UISegmentedControl alloc] initWithItems:items];
        
        // 设置默认选中
        segmentControl.selectedSegmentIndex = 0;
        
        // 设置样式
        segmentControl.backgroundColor = [UIColor clearColor];
        segmentControl.selectedSegmentTintColor = [UIColor systemBlueColor];
        
        // 设置文字颜色
        NSDictionary *normalAttr = @{
            NSForegroundColorAttributeName: [UIColor grayColor],
            NSFontAttributeName: [UIFont systemFontOfSize:16]
        };
        NSDictionary *selectedAttr = @{
            NSForegroundColorAttributeName: [UIColor whiteColor],
            NSFontAttributeName: [UIFont systemFontOfSize:16 weight:UIFontWeightMedium]
        };
        [segmentControl setTitleTextAttributes:normalAttr forState:UIControlStateNormal];
        [segmentControl setTitleTextAttributes:selectedAttr forState:UIControlStateSelected];
        
        // 添加事件
        [segmentControl addTarget:self
                           action:@selector(segmentChanged)
                 forControlEvents:UIControlEventValueChanged];
        segmentControl.frame = CGRectMake(0, 0, self.view.bounds.size.width, 80);
        
        // 设置为导航栏标题视图（关键代码）
        self.navigationItem.titleView = segmentControl;
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
