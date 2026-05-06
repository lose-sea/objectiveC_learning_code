//
//  Searchpage.m
//  zara
//
//  Created by lose_sea on 2026/5/5.
//

#import "Searchpage.h"

@interface Searchpage ()
// 分栏控件
@property (nonatomic, strong) UISegmentedControl* segmentedControl;

// 滚动视图
@property (nonatomic, strong) UIScrollView* scrollView;
@end

@implementation Searchpage

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"搜索";
    self.view.backgroundColor = [UIColor blackColor];
    self.navigationController.navigationBarHidden = YES;
    
    [self setSegmentedControl];
    [self setInterface];
    [self addTargetToSegmentedControl];
   
//    //创建系统风格按钮
//    UITabBarItem* tabbarItem = [[UITabBarItem alloc] initWithTitle: @"搜索" image: [UIImage systemImageNamed: @"magnifyingglass"] selectedImage: [UIImage systemImageNamed: @"magnifyingglass.fill"]];
//    self.tabBarItem = tabbarItem;
    
//    UITabBarItem* tabbarItem = [[UITabBarItem alloc] initWithTabBarSystemItem: UITabBarSystemItemSearch tag: 1];
//    self.tabBarItem = tabbarItem;
    
   
}

// 设置导航控制器
- (void) setNavigationController {
    // 在导航栏设置分栏控制器
    NSArray *items = @[@"女士", @"儿童", @"男士"];
    
    self.segmentedControl = [[UISegmentedControl alloc] initWithItems: items];
    
    // 背景颜色
    self.segmentedControl.backgroundColor = [UIColor whiteColor];
    
    // 设置默认选中的索引
    self.segmentedControl.selectedSegmentIndex = 0;
    
    // 分栏控件的宽度可变, 高度不可变
    self.segmentedControl.frame = CGRectMake(0, 20, self.view.bounds.size.width, 40);
    
    // 1. 设置【没选中】的文字颜色 → 黑色
    [self.segmentedControl setTitleTextAttributes:@{
        NSForegroundColorAttributeName: [UIColor whiteColor]
    } forState: UIControlStateNormal];

    // 2. 设置【选中】的文字颜色 → 白色
    [self.segmentedControl setTitleTextAttributes:@{
        NSForegroundColorAttributeName: [UIColor redColor]
    } forState: UIControlStateSelected];
    
    // 设置滑块颜色
    self.segmentedControl.selectedSegmentTintColor = [UIColor greenColor];
    
    
    // 设置分栏控件的文字颜色
    self.segmentedControl.backgroundColor = [UIColor blackColor];
    
    self.segmentedControl.frame = CGRectMake(100, 200, self.view.bounds.size.width, 40);
    
//     设置导航栏标题视图
    self.navigationItem.titleView = self.segmentedControl;

//    [self.view addSubview: self.segmentedControl];
}


// 设置分栏控件
- (void) setSegmentedControl {
    NSArray *items = @[@"女士", @"儿童", @"男士"];
    
    self.segmentedControl = [[UISegmentedControl alloc] initWithItems: items];
    
    // 背景颜色
    self.segmentedControl.backgroundColor = [UIColor whiteColor];
    
    // 设置默认选中的索引
    self.segmentedControl.selectedSegmentIndex = 0;
    
    // 分栏控件的宽度可变, 高度不可变
    self.segmentedControl.frame = CGRectMake(0, 20, self.view.bounds.size.width, 40);
    
    // 1. 设置【没选中】的文字颜色 → 黑色
    [self.segmentedControl setTitleTextAttributes:@{
        NSForegroundColorAttributeName: [UIColor whiteColor]
    } forState: UIControlStateNormal];

    // 2. 设置【选中】的文字颜色 → 白色
    [self.segmentedControl setTitleTextAttributes:@{
        NSForegroundColorAttributeName: [UIColor redColor]
    } forState: UIControlStateSelected];
    
    // 设置滑块颜色
    self.segmentedControl.selectedSegmentTintColor = [UIColor greenColor];
    
    
    // 设置分栏控件的文字颜色
    self.segmentedControl.backgroundColor = [UIColor blackColor];
    
    
    [self.view addSubview: self.segmentedControl];
    [self.segmentedControl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.view).offset(80);
            make.left.mas_equalTo(self.view);
            make.width.mas_equalTo(self.view);
            make.height.mas_equalTo(60);
    }]; 

}


// 设置界面
- (void) setInterface {
    //设置导航栏不透明, 使视图从导航栏下发开始, 不会被导航栏遮盖
    self.navigationController.navigationBar.translucent = NO;
    
    // 设置滚动视图
    self.scrollView = [[UIScrollView alloc] init];
    [self.view addSubview: self.scrollView];
    [self.scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(160);
            make.left.mas_equalTo(0);
            make.width.mas_equalTo(self.view);
            make.bottom.mas_equalTo(self.view).offset(-80);
    }];
    self.scrollView.backgroundColor = [UIColor whiteColor];
    self.scrollView.contentSize = CGSizeMake(self.view.bounds.size.width * 3, 0);
     
    // 滚动视图的相关配置
    // 允许滑动
    self.scrollView.scrollEnabled = YES;
    // 按页滑动
    self.scrollView.pagingEnabled = YES;
    
    for (int i = 0; i < 3; i++) {
        NSString* imageName = [NSString stringWithFormat: @"%d.jpg", i + 3];
        UIImage* image = [UIImage imageNamed: imageName];
        UIImageView* iView = [[UIImageView alloc] initWithImage: image];
        [self.scrollView addSubview: iView];
        [iView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(self.view.bounds.size.width * i);
            make.top.mas_equalTo(self.scrollView);
            make.width.mas_equalTo(self.scrollView.mas_width);
            make.height.mas_equalTo(self.scrollView.mas_height);
        }];
    }

    
    // 1. 设置滚动视图的代理为当前控制器
    self.scrollView.delegate = self;
}

// 为分栏控件添加事件, 当滑动分栏控件的时候, 滚动视图也随之翻页
- (void) addTargetToSegmentedControl {
    // 当标签发生变化的时候调用事件
    [self.segmentedControl addTarget: self action: @selector(segmentChanged:) forControlEvents: UIControlEventValueChanged];
}


#pragma mark - 分栏控件点击响应
- (void)segmentChanged:(UISegmentedControl *) sender {
    NSInteger index = sender.selectedSegmentIndex;
    
    // 当分栏控件的索引发生改变,滚动视图也跟随滚动到相对应的页面
    // 设置当前scrollView的左边界
    CGFloat left = self.view.bounds.size.width * index;
    // 调用方法滚动到相应的页面
    // 滑动到指定的坐标 (x, y)
    // YES: 带动画
    [self.scrollView setContentOffset: CGPointMake(left, 0)  animated: YES];
}

#pragma mark - 获取当前页码
- (NSInteger)currentPage {
    // 获取滚动视图的坐标
    // 计算出是当前视图的页码
    CGFloat width = self.scrollView.bounds.size.width;
    return self.scrollView.contentOffset.x / width;
}

#pragma mark - UIScrollViewDelegate
// 滑动结束时更新分栏控件
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {

//    CGFloat page = self.scrollView.contentOffset.x / self.scrollView.bounds.size.width;
    
    CGFloat page = [self currentPage];
    
    self.segmentedControl.selectedSegmentIndex = page;
}

// 滑动过程中实时更新（可选）
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    NSInteger currentPage = [self currentPage];
    if (self.segmentedControl.selectedSegmentIndex != currentPage) {
        self.segmentedControl.selectedSegmentIndex = currentPage;
    }
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
