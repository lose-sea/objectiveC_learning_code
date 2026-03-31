//
//  SceneDelegate.m
//  UI_test
//
//  Created by lose_sea on 2026/3/30.
//

#import "SceneDelegate.h"
#import "MyWindow.h"


@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
//            MyWindow* vc = [[MyWindow alloc] init];
//            UINavigationController* nav = [[UINavigationController alloc] initWithRootViewController: vc];
//            self.window.rootViewController = nav;
//            [self.window makeKeyAndVisible];
    
    
//    // 创建一个UIWindow对象
//    // 整个程序只有一个UIWindow 对象
//    // 在程序基本上表示屏幕窗口
//    // UIWindow 也继承于UIView
//    // 是一种特殊的UIView
//    
//    // UIScreen 表示屏幕硬件表示类
//    // mainScreen 获取主屏幕设备信息
//    // bounds 表示屏幕的宽高值
//    self.window = [[UIWindow alloc] initWithFrame: [UIScreen mainScreen].bounds];
//    
//    self.window.rootViewController = [[UIViewController alloc] init];
//    
//    self.window.backgroundColor = [UIColor blueColor];
//    // 使window有效并显示
//    [self.window makeKeyAndVisible];
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
