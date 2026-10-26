//
//  SceneDelegate.m
//  分栏控制器
//
//  Created by lose_sea on 2026/4/14.
//

#import "SceneDelegate.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCThird.h"
#import "VCFourth.h"
#import "VCFifth.h"
#import "VCSixth.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    
    self.window = [[UIWindow alloc] initWithWindowScene: (UIWindowScene*)scene];
//    UINavigationController* nav =[[UINavigationController alloc] initWithRootViewController: [[VCFirst alloc] init]];
    [self.window makeKeyAndVisible];
    
    VCFirst* vcFirst = [[VCFirst alloc] init];
    vcFirst.view.backgroundColor = [UIColor yellowColor];
    
    VCSecond* vcSecond = [[VCSecond alloc] init];
    vcSecond.view.backgroundColor = [UIColor greenColor];
    
    VCThird* vcThird = [[VCThird alloc] init];
    vcThird.view.backgroundColor = [UIColor systemCyanColor];
    
    VCFourth* vcFourth = [[VCFourth alloc] init];
    vcFourth.view.backgroundColor = [UIColor orangeColor];
    
    VCFifth* vcFifth = [[VCFifth alloc] init];
    vcFifth.view.backgroundColor = [UIColor redColor];
    
    VCSixth* vcSixth = [[VCSixth alloc] init];
    vcSixth.view.backgroundColor = [UIColor systemBrownColor];
    
    
    
    
    vcFirst.title = @"view first";
    vcSecond.title = @"view second";
    vcThird.title = @"view third";
    vcFourth.title = @"view fourth";
    vcFifth.title = @"view fifth";
    vcSixth.title = @"viwe sixth";
    


    // 创建分栏控制器对象
    UITabBarController* tbController = [[UITabBarController alloc] init];
    
    // 控制器数组
    NSArray* arrayVC = @[vcFirst, vcSecond, vcThird, vcFourth, vcFifth, vcSixth];
    
    tbController.viewControllers = arrayVC;
    
    // 改变工具栏的颜色 废弃
    // 在iOS13 之后,统一使用Apperance
//    tbController.tabBar.barTintColor = [UIColor yellowColor];
//    UITabBarAppearance* appearance = [[UITabBarAppearance alloc] init];
//
//    [appearance configureWithOpaqueBackground];

    //干掉系统默认背景
//    appearance.backgroundEffect = nil;
//
//    appearance.backgroundColor = [UIColor blueColor];
//
//    tbController.tabBar.standardAppearance = appearance;
//    tbController.tabBar.scrollEdgeAppearance = appearance;
//
//    tbController.tabBar.translucent = NO; // 再保险
    
    

    
    self.window.rootViewController = tbController;
    

    
    // 设置选中的视图控制器的索引
    // 通过索引来决定显示哪一个控制器
    tbController.selectedIndex = 2;
    
    tbController.delegate = self;
    
}
//开始编辑前调用
- (void) tabBarController: (UITabBarController*) tabBarController willBeginCustomizingViewControllers:(nonnull NSArray<__kindof UIViewController *> *)viewControllers {
    NSLog(@"开始编辑前");
}

// 即将结束
- (void) tabBarController:(UITabBarController *)tabBarController willEndCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers changed:(BOOL)changed {
    NSLog(@"即将结束前");
}

// 已经结束
- (void) tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers changed:(BOOL)changed {
    if (changed) {
        NSLog(@"顺序发生改变"); 
    }
    NSLog(@"已经结束编辑");
}

//选中控制器
- (void) tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
    NSLog(@"选中控制器"); 
}




- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
