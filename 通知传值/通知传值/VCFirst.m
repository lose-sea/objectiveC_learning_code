//
//  VCFirst.m
//  通知传值
//
//  Created by lose_sea on 2026/4/29.
//

#import "VCFirst.h"
#import "VCSecond.h"

// 定义通知名称
static NSString * const kTextFieldNotification = @"TextFieldNotification";



@interface VCFirst ()
@property (nonatomic) UILabel* showLabel;
@property (nonatomic) UIButton* pushbutton;
@end

@implementation VCFirst

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"VCFirst";
    
    
    // 创建Label, 显示接受的信息
    self.showLabel = [[UILabel alloc] initWithFrame: CGRectMake(50, 250, 300, 50)];
    self.showLabel.text = @"等待接受文字 ...";
    // 对齐方式
    self.showLabel.textAlignment = NSTextAlignmentCenter;
    self.showLabel.backgroundColor = [UIColor lightGrayColor];
    self.showLabel.textColor = [UIColor blackColor];
    [self.view addSubview: self.showLabel];
    
    // 创建按钮, 跳转界面
    self.pushbutton = [UIButton buttonWithType: UIButtonTypeSystem];
    self.pushbutton.frame = CGRectMake(100, 350, 150, 44);
    [self.pushbutton setTitle:@"去输入文字" forState:UIControlStateNormal];
    [self.pushbutton addTarget:self action:@selector(pushToSecond) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.pushbutton];
    
    
    
    // 注册通知监听
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(receiveText:) name:kTextFieldNotification object:nil];
}

- (void) pushToSecond {
    VCSecond* secondVC = [[VCSecond alloc] init];
    [self.navigationController pushViewController: secondVC animated: YES];
}


// 接受通知的方法
- (void)receiveText: (NSNotification*) notification {
    //  从userInfo 中取出 text
    NSString* text = notification.userInfo[@"text"]; 
    
    // 更行label
    self.showLabel.text = [NSString stringWithFormat: @"收到: %@", text];
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
