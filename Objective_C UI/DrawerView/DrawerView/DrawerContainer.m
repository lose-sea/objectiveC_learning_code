////
////  DrawerContainer.m
////  DrawerView
////
////  Created by lose_sea on 2026/6/15.
////
//
//#import "DrawerContainer.h"
//
//@interface DrawerContainer ()
//
//@end
//
//@implementation DrawerContainer
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


#import "DrawerContainer.h"

// 抽屉宽度 = 屏幕宽度 × 0.75
#define DRAWER_WIDTH (UIScreen.mainScreen.bounds.size.width * 0.75)
// 速度超过这个值，直接判定展开/收起
#define VELOCITY_THRESHOLD 300.0

@interface DrawerContainerVC ()

@property (nonatomic, strong) UIViewController *mainVC;   // 主视图
@property (nonatomic, strong) UIViewController *menuVC;   // 菜单视图
@property (nonatomic, strong) UIView *maskView;           // 遮罩蒙层
@property (nonatomic, assign) BOOL isOpen;                // 当前状态
@property (nonatomic, assign) CGFloat panStartX;          // 拖拽起始点

@end

@implementation DrawerContainerVC

#pragma mark - 初始化

- (instancetype)initWithMainVC:(UIViewController *)mainVC
                        menuVC:(UIViewController *)menuVC {
    self = [super init];
    if (self) {
        _mainVC = mainVC;
        _menuVC = menuVC;
    }
    return self;
}

#pragma mark - 生命周期

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupMenuVC];   // ① 先加菜单（在下层）
    [self setupMaskView]; // ② 再加蒙层
    [self setupMainVC];   // ③ 最后加主视图（在最上层）
    [self setupGestures]; // ④ 手势
}

#pragma mark - 子 VC 安装

- (void)setupMenuVC {
    // 标准的子 VC 添加流程，三步缺一不可
    [self addChildViewController:self.menuVC];
    
    // 菜单初始位置：左侧，宽度 = DRAWER_WIDTH，高度 = 全屏
    self.menuVC.view.frame = CGRectMake(-DRAWER_WIDTH,
                                         0,
                                         DRAWER_WIDTH,
                                         self.view.bounds.size.height);
    [self.view addSubview:self.menuVC.view];
    [self.menuVC didMoveToParentViewController:self];
}

- (void)setupMainVC {
    [self addChildViewController:self.mainVC];
    
    // 主视图：全屏
    self.mainVC.view.frame = self.view.bounds;
    [self.view addSubview:self.mainVC.view];
    [self.mainVC didMoveToParentViewController:self];
}

- (void)setupMaskView {
    self.maskView = [[UIView alloc] initWithFrame:self.view.bounds];
    self.maskView.backgroundColor = [UIColor blackColor];
    self.maskView.alpha = 0;
    [self.view addSubview:self.maskView];
    
    // 点击蒙层关闭抽屉
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                    initWithTarget:self
                                    action:@selector(closeDrawer)];
    [self.maskView addGestureRecognizer:tap];
}

#pragma mark - 手势

- (void)setupGestures {
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc]
                                    initWithTarget:self
                                    action:@selector(handlePan:)];
    [self.view addGestureRecognizer:pan];
}

- (void)handlePan:(UIPanGestureRecognizer *)pan {
    // 当前手指位置
    CGFloat currentX = [pan translationInView:self.view].x;
    // 手指速度（正数=向右，负数=向左）
    CGFloat velocityX = [pan velocityInView:self.view].x;
    
    switch (pan.state) {
        case UIGestureRecognizerStateBegan: {
            // 记录拖拽开始时主视图的 X
            self.panStartX = self.mainVC.view.frame.origin.x;
            break;
        }
        case UIGestureRecognizerStateChanged: {
            // 目标偏移量 = 开始时的偏移 + 手指移动距离
            CGFloat targetX = self.panStartX + currentX;
            
            // ⚠️ 边界限制：不能超出 [0, DRAWER_WIDTH]
            targetX = MAX(0, MIN(DRAWER_WIDTH, targetX));
            
            [self applyOffset:targetX animated:NO];
            break;
        }
        case UIGestureRecognizerStateEnded:
        case UIGestureRecognizerStateCancelled: {
            // 用速度判断意图
            if (velocityX > VELOCITY_THRESHOLD) {
                // 快速向右滑 → 展开
                [self openDrawer];
            } else if (velocityX < -VELOCITY_THRESHOLD) {
                // 快速向左滑 → 收起
                [self closeDrawer];
            } else {
                // 速度不够，看当前偏移过没过一半
                CGFloat currentOffset = self.mainVC.view.frame.origin.x;
                if (currentOffset > DRAWER_WIDTH / 2.0) {
                    [self openDrawer];
                } else {
                    [self closeDrawer];
                }
            }
            break;
        }
        default:
            break;
    }
}

#pragma mark - 偏移量应用（核心计算）

/**
 * offset: 主视图向右偏移的距离 (0 = 关闭, DRAWER_WIDTH = 完全打开)
 */
- (void)applyOffset:(CGFloat)offset animated:(BOOL)animated {
    // 主视图向右移动
    CGRect mainFrame = self.mainVC.view.frame;
    mainFrame.origin.x = offset;
    
    // 菜单视图跟随（从左侧 -DRAWER_WIDTH 移到 0）
    CGRect menuFrame = self.menuVC.view.frame;
    menuFrame.origin.x = offset - DRAWER_WIDTH;
    
    // 蒙层透明度：偏移比例 [0, 0.5]
    CGFloat alpha = (offset / DRAWER_WIDTH) * 0.5;
    
    if (animated) {
        [UIView animateWithDuration:0.3
                              delay:0
             usingSpringWithDamping:0.85      // 弹簧阻尼，越小越弹
              initialSpringVelocity:0.5
                            options:UIViewAnimationOptionCurveEaseOut
                         animations:^{
            self.mainVC.view.frame = mainFrame;
            self.menuVC.view.frame = menuFrame;
            self.maskView.alpha = alpha;
        } completion:nil];
    } else {
        self.mainVC.view.frame = mainFrame;
        self.menuVC.view.frame = menuFrame;
        self.maskView.alpha = alpha;
    }
}

#pragma mark - 公共方法

- (void)openDrawer {
    self.isOpen = YES;
    // 蒙层要响应点击，打开时显示出来
    self.maskView.hidden = NO;
    [self applyOffset:DRAWER_WIDTH animated:YES];
}

- (void)closeDrawer {
    self.isOpen = NO;
    [self applyOffset:0 animated:YES];
    // 关闭后隐藏蒙层，避免拦截主视图的点击
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.3 * NSEC_PER_SEC)),
                   dispatch_get_main_queue(), ^{
        self.maskView.hidden = YES;
    });
}

- (void)toggleDrawer {
    self.isOpen ? [self closeDrawer] : [self openDrawer];
}

@end
