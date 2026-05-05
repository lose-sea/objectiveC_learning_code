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
   
//    //创建系统风格按钮
//    UITabBarItem* tabbarItem = [[UITabBarItem alloc] initWithTitle: @"搜索" image: [UIImage systemImageNamed: @"magnifyingglass"] selectedImage: [UIImage systemImageNamed: @"magnifyingglass.fill"]];
//    self.tabBarItem = tabbarItem;
    
//    UITabBarItem* tabbarItem = [[UITabBarItem alloc] initWithTabBarSystemItem: UITabBarSystemItemSearch tag: 1];
//    self.tabBarItem = tabbarItem;
    
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
