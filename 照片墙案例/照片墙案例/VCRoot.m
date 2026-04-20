//
//  VCRoot.m
//  照片墙案例
//
//  Created by lose_sea on 2026/4/16.
//

#import "VCRoot.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [self test01];
//    [self test02];
    [self test03];
}
- (void) test03 {
    self.view.backgroundColor = [UIColor blackColor];
    
    self.title = @"picture";
    
    self.navigationController.navigationBar.translucent = NO;
    
    UIScrollView* sv = [[UIScrollView alloc] init];
    sv.frame = CGRectMake(5, 10, 300, 480);
    
    // 设置画布大小
    sv.contentSize = CGSizeMake(300, 480 * 7);
    
    // 设置导航栏外观
    UINavigationBarAppearance* appearance = [[UINavigationBarAppearance alloc] init];
    appearance.backgroundColor  =[UIColor purpleColor];
    
    UINavigationBar* navbar = self.navigationController.navigationBar;
    
    navbar.standardAppearance = appearance;
    navbar.scrollEdgeAppearance = appearance;
    
    for (int i = 0; i < 40; i++) {
        NSString* strName = [NSString stringWithFormat: @"%d.jpg", i + 1];
        UIImage* image = [UIImage imageNamed: strName];
        UIImageView* iView = [[UIImageView alloc] initWithImage: image];
        iView.frame = CGRectMake(110 * (i % 3) + 5,  140 * (i / 3), 98, 120);
        
        [sv addSubview: iView];
        
        // 开启交互模式
        iView.userInteractionEnabled = YES;
        
        // 创建点击手势
        UITapGestureRecognizer* tap = [[UITapGestureRecognizer alloc] initWithTarget: self action: @selector(pressTap:)];
        
        //单次点击
        tap.numberOfTapsRequired = 1;
        tap.numberOfTouchesRequired = 1;
        
        [iView addGestureRecognizer: tap];
        
        iView.tag = 101 + i;
    }
    [self.view addSubview: sv];
}


- (void) pressTap: (UITapGestureRecognizer*) tap {
    // 一个视图对象只能有一个根视图
//    // 创建显示视图控制器
    VCImageShow* imageShow = [[VCImageShow alloc] init];
    UIImageView* iView = (UIImageView*)tap.view;
    // 通过图片传值
//    UIImageView* imageView = [[UIImageView alloc] initWithImage: iView.image];
//    
//    imageShow.imageView = imageView;
    
    
    // 通过标签进行传值
    imageShow.imageTag  = iView.tag; 
    
    
    [self.navigationController pushViewController: imageShow animated: YES];
    
}








- (void) test02 {
    self.view.backgroundColor = [UIColor blackColor];
    self.title = @"照片墙";

    UIScrollView* sv = [[UIScrollView alloc] init];
    sv.frame = self.view.bounds;
    
    // 设置画布大小
    sv.contentSize = CGSizeMake(270, 480 * 7);
    
    // 取消滚动效果
    sv.bounces = NO;
    
    for (int i = 0; i < 50; i++) {
        NSString* strName = [NSString stringWithFormat: @"%d.jpg", i + 1];
        UIImage* image = [UIImage imageNamed: strName];
        UIImageView* iView = [[UIImageView alloc] initWithImage: image];
        
        iView.frame = CGRectMake(5 + (i % 3) * 130 , 10 + (i / 3) * 290, 100, 200);
        [sv addSubview: iView];
    }
    [self.view addSubview: sv];
    
    // 导航栏外观设置
    UINavigationBarAppearance* appearance = [[UINavigationBarAppearance alloc] init];
    // 设置不透明背景
    [appearance configureWithOpaqueBackground];
    
    self.navigationController.navigationBar.translucent = YES;
    appearance.backgroundColor = [UIColor whiteColor];
    // 标题颜色
    appearance.titleTextAttributes = @{
        NSForegroundColorAttributeName: [UIColor blackColor]
    };
    
    UINavigationBar* navbar = self.navigationController.navigationBar;
    navbar.standardAppearance = appearance;
    navbar.scrollEdgeAppearance = appearance;
    
    
    
   // 创建点击手势
    UITapGestureRecognizer* tap = [[UITapGestureRecognizer alloc] initWithTarget: self action: @selector(pressTap:)];
        
    // 单次点击
    tap.numberOfTapsRequired = 1;
    // 单个手势
    tap.numberOfTouchesRequired = 1;
    
    [self.view addGestureRecognizer: tap];
}


    


- (void) test01 {
    
    self.view.backgroundColor = [UIColor systemCyanColor];
    self.title = @"picture Wall";

    self.navigationController.navigationBar.translucent = YES;
    
    UIScrollView* sv = [[UIScrollView alloc] init];
    sv.frame = CGRectMake(5, 10, 300, 480);
    // 画布大小
    sv.contentSize = CGSizeMake(270, 480);
    // 打开交互事件
    sv.userInteractionEnabled = YES;
    
    for (int i = 0; i < 6; i++) {
        NSString* strName = [NSString stringWithFormat: @"%d.png", i + 1];
        UIImage* image = [UIImage imageNamed: strName] ;
        UIImageView * iView = [[UIImageView alloc] initWithImage: image];
        
        iView.frame = CGRectMake(3 + 100 * (i % 3), (i / 3) * 140 + 10, 90, 130);
        
        [sv addSubview: iView];
        
        iView.userInteractionEnabled = YES;
        
        // 创建点击手势
        UITapGestureRecognizer* tap = [[UITapGestureRecognizer alloc] initWithTarget: self action: @selector(pressTap:)];
        
        // 单次点击
        tap.numberOfTapsRequired = 1;
        // 单个手势
        tap.numberOfTouchesRequired = 1;
        
        [iView addGestureRecognizer: tap];
        
    }
    [self.view addSubview: sv];
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
