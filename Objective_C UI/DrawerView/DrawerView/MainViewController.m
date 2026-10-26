////
////  MainViewController.m
////  DrawerView
////
////  Created by lose_sea on 2026/6/15.
////
//
//#import "MainViewController.h"
//
//@interface MainViewController ()
//
//@end
//
//@implementation MainViewController
//
//- (void)viewDidLoad {
//    [super viewDidLoad];
//    // Do any additional setup after loading the view.
//}
//
///*
//#pragma mark - Navigation
//
//// In a storyboard-based application, you will often want to do a little preparation before navigation
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    // Get the new view controller using [segue destinationViewController].
//    // Pass the selected object to the new view controller.
//}
//*/
//
//@end


#import "MainViewController.h"
#import "DrawerContainer.h"

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"主页";
    self.view.backgroundColor = [UIColor systemBlueColor]; 
    
    // 汉堡菜单按钮
    UIBarButtonItem *menuBtn = [[UIBarButtonItem alloc]
        initWithImage:[UIImage systemImageNamed:@"line.horizontal.3"]
                style:UIBarButtonItemStylePlain
               target:self
               action:@selector(toggleDrawer)];
    self.navigationItem.leftBarButtonItem = menuBtn;
}

- (void)toggleDrawer {
    // 向上找到 DrawerContainerVC
    UIViewController *parent = self.parentViewController;
    while (parent && ![parent isKindOfClass:[DrawerContainerVC class]]) {
        parent = parent.parentViewController;
    }
    [(DrawerContainerVC *)parent toggleDrawer];
}

@end
