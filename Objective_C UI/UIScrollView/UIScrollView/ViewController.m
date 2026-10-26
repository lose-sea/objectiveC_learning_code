//
//  ViewController.m
//  UIScrollView
//
//  Created by lose_sea on 2026/4/8.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void) createScrollView {
    UIScrollView* sv = [[UIScrollView alloc] init];
    sv.frame = CGRectMake(0, 0, 430, 850);
    
    // 是否按整页来滚动视图
    sv.pagingEnabled = YES;
    // 是否可以开启滚动效果
    sv.scrollEnabled = YES;
    // 设置画布的大小  (画布显示在滚动视图内部, 一般大于Frame 的大小)
    // 画布大小决定了可以容纳图片的数量
    sv.contentSize = CGSizeMake(430 * 5, 932);
    // 是否可以边缘弹动效果
    sv.bounces = NO;
    // 开启横向弹动效果
    sv.alwaysBounceHorizontal = YES;
    // 开启纵向弹动效果
    sv.alwaysBounceVertical = YES;
    // 显示横向滚动条
    sv.showsHorizontalScrollIndicator = YES;
    // 显示纵向滚动条
    sv.showsVerticalScrollIndicator = YES;
    // 设置背景颜色
    sv.backgroundColor = [UIColor yellowColor];
    
    for (int i = 0; i < 5; i++) {
        NSString* strName = [NSString stringWithFormat: @"%d.png", i + 1];
        
        UIImage* image = [UIImage imageNamed: strName];
        
        UIImageView* iView = [[UIImageView alloc] initWithImage: image];
        
        iView.frame = CGRectMake(430 * i, 0, 430, 932);
        
        [sv addSubview: iView];
    }
    
    
    [self.view addSubview: sv];
}

- (void) createScrollView01 {
    _scrollView = [[UIScrollView alloc] init];
    
    // 设定位置
    _scrollView.frame = CGRectMake(10, 50, 300, 400);
    
    // 取消滚动效果
    _scrollView.bounces = NO;
    
    // 允许通过点击屏幕来让屏幕视图响应事件
    _scrollView.userInteractionEnabled = YES;
    
    // 设置画布大小, (纵向效果)
    _scrollView.contentSize = CGSizeMake(300, 400 * 5);
    
    for (int i = 0; i < 5; i++) {
        NSString* strName = [NSString stringWithFormat: @"%d.png", i + 1];
        
        UIImage* image = [UIImage imageNamed: strName];
        
        UIImageView* iView = [[UIImageView alloc] init];
        // 图像赋值
        iView.image = image;
        // 设置图像在滚动视图画布的位置
        iView.frame = CGRectMake(0, 400 * i, 300, 400);
        
        [_scrollView addSubview: iView];
        
    }
    [self.view addSubview: _scrollView];
    
    // 按页滚动
    _scrollView.pagingEnabled = NO;
    
    // 滚动视图画布的移动位置, 偏移位置
    // 功能: 决定画布显示的最终图像结果
    _scrollView.contentOffset = CGPointMake(0, 0);
    
    // 将当前视图控制器作为代理对象
    _scrollView.delegate = self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [self createScrollView];
    [self createScrollView01];
}

// 滚动视图即将开始被拖动
- (void) scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    NSLog(@"willBeginDrag!");
}

// 只要滚动视图移动时, 只要offset 坐标发生变化, 都会调用此函数
- (void) scrollViewDidScroll:(UIScrollView *)scrollView {
    NSLog(@"y = %f", _scrollView.contentOffset.y);
}

// 当滚动视图结束拖动时调用此函数
- (void) scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    NSLog(@"Did End Drag");
}



// 视图即将减速时调用
- (void) scrollViewWillBeginDecelerating:(UIScrollView *)scrollView {
    NSLog(@"Will Begin Deceleratg!");
}

// 视图已经结束减速, (视图停止时的瞬间调用)
- (void) scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    NSLog(@"视图停止移动");
}

// 点击屏幕时调用
- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    // 直接跳转, 无动画
//    _scrollView.contentOffset = CGPointMake(0, 0);
    // 让滚动视图移动到指定位置, 动画移动
    [_scrollView scrollRectToVisible: CGRectMake(0, 0, 300, 400) animated: YES];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end

