//
//  VCFirst.m
//  分栏控制器
//
//  Created by lose_sea on 2026/4/15.
//

#import "VCFirst.h"

@interface VCFirst ()

@end

@implementation VCFirst
- (void) test01 {
//    UITabBarItem* tabBarItem = [[UITabBarItem alloc] initWithTitle: @"111" image: nil tag: 101];
//    
//    self.tabBarItem = tabBarItem;
    
    // 创建系统风格按钮
                                                                                        // contact: 联系人
    UITabBarItem* tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem: UITabBarSystemItemContacts tag: 101];
    
    // 按钮右上角的提示信息
    // 通常用来提示未读信息
    tabBarItem.badgeValue = @"22";
    self.tabBarItem = tabBarItem;
    
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self test01];
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
