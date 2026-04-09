//
//  ViewController.m
//  UITextField 控件
//
//  Created by lose_sea on 2026/4/7.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void) createTextField {
//    self.view.backgroundColor = [UIColor systemGrayColor];
    _textField = [[UITextField alloc] init];
    _textField.frame = CGRectMake(70, 200, 300, 40);
    _textField.backgroundColor = [UIColor systemCyanColor];
    
    // 字体大小
    _textField.font = [UIFont systemFontOfSize: 20];
    
    // 字体颜色
    _textField.textColor = [UIColor redColor];
    
    //对齐方式
//    _textField.textAlignment = NSTextAlignmentCenter;
    
    // 内容文字
//    _textField.text = @"Account: ";
    
    // 设置边框风格
    _textField.borderStyle = UITextBorderStyleRoundedRect;  // 圆角风格
    _textField.borderStyle = UITextBorderStyleLine;  // 线框风格
    _textField.borderStyle = UITextBorderStyleBezel;  // bezel线框风格
//    _textField.borderStyle = UITextBorderStyleNone;  // 无边框风格
    
    // 设置虚拟键盘
    self.textField.keyboardType = UIKeyboardTypeDefault;    // 默认
//    self.textField.keyboardType = UIKeyboardTypePhonePad;    // 字母数字组合风格
//    self.textField.keyboardType = UIKeyboardTypeNumberPad;    // 纯数字风格
    
    // 提示文字属性
    // 当text属性为空时, 会显示此条信息
    self.textField.placeholder = @"请输入用户名";
    
    // 是否作为密码输入
    // 会用 * 隐藏输入
    self.textField.secureTextEntry = NO;
    
    // 设置代理对象
    _textField.delegate = self;
    
    
    [self.view addSubview: _textField];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createTextField];
}

- (void) textFieldDidBeginEditing:(UITextField *)textField {
    NSLog(@"开始输入");
}


- (void) textFieldDidEndEditing:(UITextField *)textField {
    NSLog(@"结束输入");
}
// 是否可以开始输入
- (BOOL) textFieldShouldBeginEditing:(UITextField *)textField {
    return YES;
}

// 是否可以结束输入
- (BOOL) textFieldShouldEndEditing:(UITextField *)textField {
    return YES;
}


// 点击屏幕空白处调用此函数
- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    // 使虚拟键盘回收, 不再作为第一消息响应
    [self.textField resignFirstResponder];
}
@end
