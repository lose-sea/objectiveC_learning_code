////
////  DrawerContainer.h
////  DrawerView
////
////  Created by lose_sea on 2026/6/15.
////
//
//#import <UIKit/UIKit.h>
//
//NS_ASSUME_NONNULL_BEGIN
//
//@interface DrawerContainer : UIViewController
//
//@end
//
//NS_ASSUME_NONNULL_END


#import <UIKit/UIKit.h>

@interface DrawerContainerVC : UIViewController

// 初始化时传入主视图和菜单视图
- (instancetype)initWithMainVC:(UIViewController *)mainVC
                        menuVC:(UIViewController *)menuVC;

- (void)openDrawer;
- (void)closeDrawer;
- (void)toggleDrawer;

@end
