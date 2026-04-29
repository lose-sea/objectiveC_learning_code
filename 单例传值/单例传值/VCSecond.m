//
//  VCSecond.m
//  单例传值
//
//  Created by lose_sea on 2026/4/29.
//

#import "VCSecond.h"

@interface VCSecond ()
@property (nonatomic, strong) UITextField *inputTextField;
@end

@implementation VCSecond

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"VCSecond";
    
    // 创建输入框
    self.inputTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 250, 275, 44)];
    self.inputTextField.borderStyle = UITextBorderStyleRoundedRect;
    self.inputTextField.placeholder = @"请输入文字";
    [self.view addSubview:self.inputTextField];
        
    // 创建发送按钮
    UIBarButtonItem* item = [[UIBarButtonItem alloc] initWithTitle: @"back" style: UIBarButtonItemStylePlain target: self action: @selector(pressSave)];
    self.navigationItem.rightBarButtonItem = item;
}

- (void) pressSave {
    NSString* inputText = self.inputTextField.text;
    if (inputText.length == 0) {
        inputText = @"空消息";
    }
    
    // 把数据存入单例
    [DataManager shareManager].shareText = inputText;
    
    NSLog(@"已保存到单例: %@", inputText);
    
    // 返回
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
