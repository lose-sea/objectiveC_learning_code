//
//  VCFirst.m
//  正向传值
//
//  Created by lose_sea on 2026/4/21.
//

#import "VCFirst.h"

@interface VCFirst ()

@end

@implementation VCFirst

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self test01];
}

- (void) test01 {
    
    // 向导航栏添加按钮切换控制器
    UIBarButtonItem* next = [[UIBarButtonItem alloc] initWithTitle: @"next" style: UIBarButtonItemStylePlain target: self action: @selector(pressNext)];
    self.navigationItem.rightBarButtonItem = next;
    
    _textField = [[UITextField alloc] init];
    _textField.frame = CGRectMake(100, 100, 200, 60);
    _textField.placeholder = @"请输入要传递的内容";
    _textField.backgroundColor = [UIColor systemBlueColor];
    
    // 输入框的风格
    _textField.borderStyle = UITextBorderStyleLine; // 线框风格
    _textField.borderStyle = UITextBorderStyleRoundedRect;
    
    // 设置虚拟键盘
//    self.textField.keyboardType = UIKeyboardTypePhonePad; // 字母数字风格
    self.textField.keyboardType = UIKeyboardTypeDefault; // 默认
    
    
    [self.view addSubview: _textField];
    
}
- (void) pressNext {
    VCSecond* vc = [[VCSecond alloc] init];
    vc.text = self.textField.text;
    vc.view.backgroundColor = [UIColor purpleColor];
    vc.title = @"视图二";
    
    
    [self.navigationController pushViewController:vc animated:YES];
}

- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.textField resignFirstResponder];
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
