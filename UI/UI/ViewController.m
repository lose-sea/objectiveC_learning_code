//
//  ViewController.m
//  UIdemo
//
//  Created by lifany on 2026/4/4.
//

#import "ViewController.h"
//#import "ViewC02ViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor whiteColor];
//    UIView *vi1 = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 150, 100)];
//    vi1.bounds = CGRectMake(0, 0, 100, 50);
//    vi1.backgroundColor = [UIColor redColor];
//    vi1.tag = 101;
//    UIView *sub = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 150, 100)];
//    sub.backgroundColor = [UIColor yellowColor];
//    [self.view addSubview:sub];
//    [self.view addSubview:vi1];
    
    UIImage *image = [UIImage imageNamed:@"1.png"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    CGSize imageSize = image.size;
    CGFloat screenWidth = self.view.frame.size.width;
    CGFloat scale = screenWidth / imageSize.width;
    CGFloat scaleHeight = imageSize.height * scale;
    
    imageView.frame = CGRectMake(0, 0, screenWidth, scaleHeight);
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    scrollView.contentSize = CGSizeMake(screenWidth, scaleHeight);
    
    [scrollView addSubview:imageView];
    [self.view addSubview:scrollView];
//    UIView *sub = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
//    sub.backgroundColor = [UIColor yellowColor];
//    [vi1 addSubview:sub];
//    [self performSelector:@selector(finishLoading) withObject:nil afterDelay:2.0];
}


//- (void)finishLoading {
//    UIView *temp = [self.view viewWithTag:101];
//    temp.backgroundColor = [UIColor blueColor];
//    temp.bounds = CGRectMake(50, 50, 100, 50);
//}

    
//    UIButton *but = [UIButton buttonWithType:UIButtonTypeCustom];
//    but.frame = CGRectMake(100, 100, 200, 50);
//    but.backgroundColor = [UIColor blueColor];
//    [but setTitle:@"加载数据" forState:UIControlStateNormal];
//    [but addTarget:self action:@selector(loadDate) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:but];
    
    
    // 文本输入框
//    self.textField = [[UITextField alloc] initWithFrame:CGRectMake(20, 100, 280, 40)];
//    self.textField.borderStyle = UITextBorderStyleBezel;
//    self.textField.placeholder = @"请输入"  ;
////    self.textField.text = @"hello";
//    self.textField.font = [UIFont systemFontOfSize:15];
//    self.textField.textColor = [UIColor blackColor];
//    self.textField.textAlignment = NSTextAlignmentCenter;
//    self.textField.keyboardType = UIKeyboardTypeTwitter;
//    self.textField.returnKeyType = UIReturnKeyGoogle;
//    self.textField.secureTextEntry = NO;
//    [self.view addSubview:self.textField];
//    self.textField.delegate = self;
    
    
    // 分栏控制器
//    UISegmentedControl *seg = [[UISegmentedControl alloc] initWithFrame:CGRectMake(10, 200, 300, 40)];
//    [seg insertSegmentWithTitle:@"1" atIndex:1 animated:NO];
//    [seg insertSegmentWithTitle:@"2" atIndex:2 animated:NO];
//    [seg insertSegmentWithTitle:@"3" atIndex:3 animated:NO];
//    [self.view addSubview:seg];
    
    // 进度条 滑块 步进器
    //    [self.view addSubview:textField];
    //    self.sli = [[UISlider alloc] initWithFrame:CGRectMake(50, 200, 300, 30)];
    //    self.sli.tintColor = [UIColor orangeColor];
    //    self.sli.minimumValue = 0;
    //    self.sli.maximumValue = 10;
    //    self.sli.value = 6;
    //    self.sli.minimumTrackTintColor = [UIColor blueColor];
    //    self.sli.maximumTrackTintColor = [UIColor grayColor];
    //    self.sli.thumbTintColor = [UIColor whiteColor];
    //    [self.sli addTarget:self action:@selector(sliChanges) forControlEvents:UIControlEventValueChanged];
    //    [self.view addSubview:self.sli];
    //
    //    // 进度条无法添加响应事件
    //    self.pro = [[UIProgressView alloc] initWithFrame:CGRectMake(50, 300, 300, 30)];
    ////    self.pro.progressTintColor = [UIColor blueColor];
    //    // 进度条进度是0-1
    //    self.pro.progress = 0.5;
    //    self.pro.progressViewStyle = UIProgressViewStyleDefault;
    //    [self.view addSubview:self.pro];
    //
    //    self.step = [[UIStepper alloc] init];
    //    self.step.frame = CGRectMake(150, 100, 100, 4);
    //    self.step.minimumValue = 0;
    //    self.step.maximumValue = 10;
    //    self.step.value = self.sli.value;
    //    self.step.tintColor = [UIColor blueColor];
    //    self.step.stepValue = 1;
    //    self.step.autorepeat = YES;
    //    self.step.continuous = YES;
    //    [self.step addTarget:self action:@selector(stepChanges:) forControlEvents:UIControlEventValueChanged];
    //    [self.view addSubview:self.step];
    //
    //    UILabel *label = [[UILabel alloc] init];
    //    label.frame = CGRectMake(175, 350, 50, 50);
    //    label.textAlignment = UITextAlignmentCenter;
    //    label.font = [UIFont systemFontOfSize:24];
    //    label.text = [NSString stringWithFormat:@"%.0f", self.step.value];
    //    label.tag = 101;
    //    [self.view addSubview:label];
// }

//- (void)loadDate {
//    self.act = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleMedium];
//    self.act.center = self.view.center;
//    self.act.color = [UIColor blueColor];
//    self.act.hidesWhenStopped = YES;
//    [self.view addSubview:self.act];
//    [self.act startAnimating];
//    [self performSelector:@selector(finishLoading) withObject:nil afterDelay:2.0];
//}
//- (void)finishLoading {
//    // 停止加载动画
//    [self.act stopAnimating];
//    self.alert = [UIAlertController alertControllerWithTitle:@"警告" message:@"安装失败" preferredStyle:UIAlertControllerStyleAlert];
//    UIAlertAction *al1 = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//        NSLog(@"执行安装操作");
//    }];
//    UIAlertAction *al2 = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//        NSLog(@"操作取消");
//    }];
//    [_alert addAction:al1];
//    [_alert addAction:al2];
//
//    [self presentViewController:_alert animated:YES completion:nil];
//}

//- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [self.textField resignFirstResponder];
//}
//// 手机键盘弹出的瞬间开始调用
//- (void)textFieldDidBeginEditing:(UITextField *)textField {
//    NSLog(@"启动");
//}
//- (void)textFieldDidEndEditing:(UITextField *)textField {
//    NSLog(@"关闭");
//}
//- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
//    return YES;
//}
//- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
//    return YES;
//}
//- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
//    NSLog(@"正在输入字符：%@", string);
//    return YES;
//}
//- (void) sliChanges {
//    self.pro.progress = (self.sli.value - self.sli.minimumValue) / (self.sli.maximumValue - self.sli.minimumValue);
//    self.step.value = self.sli.value;
//    UILabel *lab = [self.view viewWithTag:101];
//    lab.text = [NSString stringWithFormat:@"%.0f", self.sli.value];
//}
//- (void) stepChanges:(UIStepper *)sender {
//    self.pro.progress = (sender.value - sender.minimumValue) / (sender.maximumValue - sender.minimumValue);
//    self.sli.value = sender.value;
//    double curr = sender.value;
//    UILabel *label = [self.view viewWithTag:101];
//    label.text = [NSString stringWithFormat:@"%.0f", curr];
//}


// 视图转换

//- (void)login {
//    ViewC02ViewController *vc = [[ViewC02ViewController alloc] init];
//    UIWindow *mywindow = self.view.window;
//    [UIView transitionWithView:mywindow
//                          duration:0.3
//                           options:UIViewAnimationOptionTransitionCrossDissolve
//                        animations:^{
//                            mywindow.rootViewController = vc;
//                        } completion:^(BOOL finished) {
//                            NSLog(@"根控制器已切换");
//                        }];
//}
//- (void)goNext{
////    UIViewController *vc = [[UIViewController alloc] init];
////    vc.view.backgroundColor = [UIColor redColor];
//    ViewC02ViewController *v2 = [[ViewC02ViewController alloc] init];
//    v2.modalPresentationStyle = UIModalPresentationFullScreen;
////    [self.navigationController pushViewController:v2 animated:YES];
////    self.title = @"hhhh";
//    [self presentViewController:v2 animated:YES completion:nil];
//}

//- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
////    ViewC02ViewController *v2 = [[ViewC02ViewController alloc] init];
////    [self presentViewController:v2 animated:YES completion:nil];
//    UIViewController *vc = [[UIViewController alloc] init];
//        vc.view.backgroundColor = [UIColor redColor];
//    [self.navigationController pushViewController:vc animated:YES];
//}
//- (void) viewWillAppear:(BOOL)animated {
//    NSLog(@"%@视图即将出现", [self class]);
//}
//- (void) viewWillDisappear:(BOOL)animated {
//    NSLog(@"%@视图即将消失", [self class]);
//}
//- (void) viewDidAppear:(BOOL)animated {
//    NSLog(@"%@视图已经出现", [self class]);
//}
//- (void) viewDidDisappear:(BOOL)animated {
//    NSLog(@"%@视图已经消失", [self class]);
//}

@end
