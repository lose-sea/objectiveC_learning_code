//
//  VCSecond.m
//  通知传值
//
//  Created by lose_sea on 2026/4/29.
//

#import "VCSecond.h"

// 定义通知的名称
// 通知名称必须与VCFirst中 一致
static NSString * const kTextFieldNotification = @"TextFieldNotification";


@interface VCSecond ()
@property (nonatomic) UITextField* inputTextField;
@property (nonatomic) UIButton* sendButton;
@end

@implementation VCSecond

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"VCSecond";
    
    // 创建TextField
    self.inputTextField = [[UITextField alloc] initWithFrame: CGRectMake(50, 250, 275, 44)];
    // 输入框风格
    self.inputTextField.borderStyle = UITextBorderStyleRoundedRect;
    self.inputTextField.placeholder = @"请输入文字";
    
    // 编辑时显示清除按钮
    self.inputTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    [self.view addSubview: _inputTextField];
    
    // 创建发送按钮
    self.sendButton = [UIButton buttonWithType: UIButtonTypeSystem];
    self.sendButton.frame = CGRectMake(100, 320, 150, 44);
    [self.sendButton setTitle: @"发送并返回" forState: UIControlStateNormal];
    self.sendButton.backgroundColor = [UIColor systemBlueColor];
    [self.sendButton setTitleColor: [UIColor whiteColor] forState: UIControlStateNormal];
    [self.sendButton addTarget: self action: @selector(sendAndBack) forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview: _sendButton];
}

- (void) sendAndBack {
    // 获取输入的文字
    NSString* str = self.inputTextField.text;
    
    // 如果文字为空, 给定默认值
    if (str.length == 0) {
        str =  @"空消息";
    }
    
    // 发送通知
    [[NSNotificationCenter defaultCenter] postNotificationName: kTextFieldNotification object: self userInfo: @{@"text": str}];
    
    // 返回上一个界面
    [self.navigationController popViewControllerAnimated: YES];
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
