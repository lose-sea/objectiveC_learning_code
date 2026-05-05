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
    
    self.view.backgroundColor = [UIColor blackColor];
    self.title = @"首页";
    
//    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
    [self setNavigationController];
    
    // 往导航栏中添加一个搜索按钮
    UIBarButtonItem* search = [[UIBarButtonItem alloc] initWithBarButtonSystemItem: UIBarButtonSystemItemSearch target: self action: @selector(pressSearch)];
    
    self.navigationItem.rightBarButtonItem = search;
    
    // 设置界面
    [self setInterface];
}

// 设置界面
- (void) setInterface {
    
    // 设置标签
    UIImage* imaegZara = [UIImage imageNamed: @"1"];
    UIImageView* ZaraView = [[UIImageView alloc] initWithImage: imaegZara];
//    ZaraView.backgroundColor = [UIColor blackColor];
    [self.view addSubview: ZaraView];
    [ZaraView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view).offset(60);
        make.left.mas_equalTo(self.view).offset(20);
        make.width.mas_equalTo(250);
        make.height.mas_equalTo(180);
    }];
    
    //设置滚动页面
    UIScrollView* scrollView = [[UIScrollView alloc] init];
    scrollView.backgroundColor = [UIColor systemCyanColor];
    [self.view addSubview: scrollView];
    [scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view).offset(200);
        make.left.mas_equalTo(self.view);
        make.width.mas_equalTo(self.view.mas_width);
        make.bottom.mas_equalTo(self.view.mas_bottom).offset(-100);
    }];
    

    
    // 设置允许滑动
    scrollView.scrollEnabled = YES;
    
    // 按页滑动
    scrollView.pagingEnabled = YES;
    
    // 显示 横向 / 纵向 滚动条
    scrollView.showsHorizontalScrollIndicator = YES;
    scrollView.showsVerticalScrollIndicator = NO;
    
    // 设置画布大小
    // 高度自适应
    scrollView.contentSize = CGSizeMake(self.view.bounds.size.width * 10, 0);
    
    
    
    for (int i = 0; i < 10; i++) {
        NSString* imageName = [NSString stringWithFormat: @"%d.jpg", i + 1];
        UIImage* image = [UIImage imageNamed: imageName];
        UIImageView* iView = [[UIImageView alloc] initWithImage: image];
        
        [scrollView addSubview: iView];
        [iView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(scrollView);
            make.left.mas_equalTo(scrollView).offset(self.view.bounds.size.width * i);
            make.height.mas_equalTo(scrollView);
            make.width.mas_equalTo(scrollView);
        }];
    }
    

    
}

// 设置导航栏外观
- (void) setNavigationController {
    // 导航栏透明
    self.navigationController.navigationBar.translucent = YES;
//    self.navigationController.navigationBar.backgroundColor = [UIColor blackColor];
    
    
    
}

// 按钮事件
- (void) pressSearch {
    NSLog(@"点击了搜索");
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
