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
- (void) test01 {
    
    self.view.backgroundColor = [UIColor systemCyanColor];
    self.title = @"picture Wall";

    self.navigationController.navigationBar.translucent = YES;
    
    UIScrollView* sv = [[UIScrollView alloc] init];
    sv.frame = CGRectMake(5, 10, 300, 480);
    // 画布大小
    sv.contentSize = CGSizeMake(300, 480 * 1.5);
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
- (void) test02 {
    self.view.backgroundColor = [UIColor systemGreenColor];
    self.title = @"照片墙";

    UIScrollView* sv = [[UIScrollView alloc] init];
    sv.frame = CGRectMake(5, 10, 480, 480);
    
    sv.contentSize = CGSizeMake(480, 480 * 3);
    
    for (int i = 0; i < 6; i++) {
        NSString* strName = [NSString stringWithFormat: @"%d.png", i + 1];
        UIImage* image = [UIImage imageNamed: strName];
        UIImageView* iView = [[UIImageView alloc] initWithImage: image];
        
        iView.frame = CGRectMake(5 + (i % 3) * 130 , 10 + (i / 3) * 320, 100, 200);
        [sv addSubview: iView];
    }
    [self.view addSubview: sv];
    
    UINavigationBarAppearance* appearance = [[UINavigationBarAppearance alloc] init];
    // 设置不透明背景
    [appearance configureWithOpaqueBackground];
    
//    self.navigationController.navigationBar.translucent = NO;
    appearance.backgroundColor = [UIColor yellowColor];
    // 标题颜色
    appearance.titleTextAttributes = @{
        NSForegroundColorAttributeName: [UIColor blackColor]
    };
    
    UINavigationBar* navbar = self.navigationController.navigationBar;
    navbar.standardAppearance = appearance;
    navbar.scrollEdgeAppearance = appearance;
    
    //工具栏默认是隐藏的
    
    
    UIBarButtonItem* item1 = [[UIBarButtonItem alloc] initWithTitle: @"item1" style: UIBarButtonItemStylePlain target: self action: @selector(pressTap:)];
    
    self.navigationItem.leftBarButtonItem = item1;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [self test01];
    [self test02];
}
    
- (void) pressTap: (UITapGestureRecognizer*) tap {
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
