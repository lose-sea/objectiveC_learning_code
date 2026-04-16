//
//  VCRoot.m
//  Appearance 专题练习
//
//  Created by lose_sea on 2026/4/16.
//

#import "VCRoot.h"

@interface VCRoot ()

@end

@implementation VCRoot
- (void) test01 {
    self.view.backgroundColor = [UIColor systemCyanColor];
    self.title = @"VCRoot";
    
    UIBarButtonItem* leftBtn = [[UIBarButtonItem alloc] initWithTitle: @"Btn" style: UIBarButtonItemStylePlain target: self action: @selector(pressTap)];
    self.navigationItem.leftBarButtonItem = leftBtn;
    
    // 设置不透明
    // 默认是 YES, 透明
    self.navigationController.navigationBar.translucent = YES;
    
    // 设置导航栏的背景颜色
    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    
    UINavigationBarAppearance* appearance = [[UINavigationBarAppearance alloc] init];
//    [appearance configureWithOpaqueBackground];
    
    appearance.backgroundColor = [UIColor greenColor];
    
    // 标题颜色
    appearance.titleTextAttributes = @{
        NSForegroundColorAttributeName: [UIColor redColor]
    };
    
//    // 按钮颜色(按钮的文字颜色)
//    appearance.buttonAppearance.normal.titleTextAttributes = @{
//        NSForegroundColorAttributeName: [UIColor blueColor]
//    };
    
    appearance.buttonAppearance.normal.titleTextAttributes = @{
        NSForegroundColorAttributeName: [UIColor blackColor]
    };
    
    UINavigationBar* navbar = self.navigationController.navigationBar;
    navbar.standardAppearance = appearance;
    navbar.scrollEdgeAppearance = appearance;
    
    
    
    
    // 工具栏
    // 工具栏默认隐藏, 设置不隐藏
    [self.navigationController setToolbarHidden: NO animated: YES];
    
//    self.navigationController.toolbar.translucent = NO;
    
    UIToolbarAppearance* toolAppearance = [[UIToolbarAppearance alloc] init];
    self.navigationController.toolbarHidden = NO;
    // 设置不透明
    [toolAppearance configureWithOpaqueBackground];
    
    toolAppearance.backgroundColor = [UIColor yellowColor];
    
    UIToolbar* toolBar = self.navigationController.toolbar;
    toolBar.standardAppearance = toolAppearance;
    toolBar.scrollEdgeAppearance = toolAppearance;
    toolBar.compactAppearance = toolAppearance;
    

    
//    toolBar.tintColor = [UIColor redColor];
    
    UIBarButtonItem* item1 = [[UIBarButtonItem alloc] initWithTitle: @"item1" style: UIBarButtonItemStylePlain target: self action: @selector(pressTap)];
    UIBarButtonItem* item2 = [[UIBarButtonItem alloc] initWithTitle: @"item2" style: UIBarButtonItemStylePlain target: self action: @selector(pressTap)];
    
    self.toolbarItems = @[item1, item2];
    [self.navigationController setToolbarHidden:NO animated:NO];
    
//    toolappearance.backgroundColor = [UIColor ]

    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self test01];
}

- (void) pressTap {
    NSLog(@"btn is pressed");
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
