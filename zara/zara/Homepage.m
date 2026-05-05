//
//  homepage.m
//  zara
//
//  Created by lose_sea on 2026/5/5.
//

#import "Homepage.h"

@interface Homepage ()

@end

@implementation Homepage

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor greenColor];
    self.title = @"首页";
    
////    创建系统风格按钮
//    UITabBarItem* tabbarItem = [[UITabBarItem alloc] initWithTitle: @"首页" image: [UIImage systemImageNamed: @"house"] selectedImage: [UIImage systemImageNamed: @"house.fill"]];
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
