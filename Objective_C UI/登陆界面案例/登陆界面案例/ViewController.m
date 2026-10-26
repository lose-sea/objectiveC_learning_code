//
//  ViewController.m
//  登陆界面案例
//
//  Created by lose_sea on 2026/4/8.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UILabel* lbUserName;
@property (nonatomic, strong) UILabel* lbPassword;
@property (nonatomic, strong) UITextField* tfUserName;
@property (nonatomic, strong) UITextField* tfPassword;
@property (nonatomic, strong) UIButton* btLogin;
@property (nonatomic, strong) UIButton* btRegister;
@end

@implementation ViewController
- (void) createLogin {
    // 用户名提示标签
    _lbUserName = [[UILabel alloc] init];
    _lbUserName.frame = CGRectMake(20, 60, 80 , 40);
    _lbUserName.text = @"用户名: ";
    _lbUserName.font = [UIFont systemFontOfSize: 15];
    _lbUserName.textAlignment = NSTextAlignmentLeft;
    
    // 密码提示标签
    _lbPassword = [[UILabel alloc] init];
    _lbPassword.frame = CGRectMake(20, 140, 80, 40);
    _lbPassword.text = @"密码: ";
    _lbPassword.font = [UIFont systemFontOfSize: 15];
    
    // 用户名输入框
    _tfUserName = [[UITextField alloc] init];
    _tfUserName.frame = CGRectMake(120, 60, 180, 40);
    _tfUserName.placeholder = @"请输入用户名";
    _tfUserName.borderStyle = UITextBorderStyleRoundedRect;
    
    
    // 密码输入框
    _tfPassword = [[UITextField alloc] init];
    _tfPassword.frame = CGRectMake(120, 140, 180, 40);
    _tfPassword.placeholder = @"请输入密码";
    _tfPassword.borderStyle = UITextBorderStyleRoundedRect;
    _tfPassword.secureTextEntry = YES;
    
    _btLogin = [UIButton buttonWithType: UIButtonTypeSystem];
    _btLogin.frame = CGRectMake(120, 300, 80, 40);
    [_btLogin setTitle: @"登陆" forState: UIControlStateNormal];
    [_btLogin addTarget: self action: @selector(pressLogin) forControlEvents: UIControlEventTouchUpInside];
     
    _btRegister = [UIButton buttonWithType: UIButtonTypeSystem];
    _btRegister.frame =CGRectMake(120, 360, 80, 40);
    [_btRegister setTitle: @"注册" forState: UIControlStateNormal];
    [_btRegister addTarget: self action: @selector(pressRegister) forControlEvents: UIControlEventTouchUpInside];
    
    
    [self.view addSubview: _lbUserName];
    [self.view addSubview: _lbPassword];
    [self.view addSubview: _tfUserName];
    [self.view addSubview: _tfPassword];
    [self.view addSubview: _btLogin];
    [self.view addSubview: _btRegister];
    
}

// 收回键盘
- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [_tfUserName resignFirstResponder];
    [_tfPassword resignFirstResponder];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createLogin];
}

- (void) pressLogin {
    NSLog(@"登陆中");
    NSString* strName = @"xinyan";
    NSString* strPass = @"111111";
    
    // 获取输入框中的内容
    NSString* strTextName = _tfUserName.text;
    NSString* strTextPass = _tfPassword.text;
    
    if ([strName isEqualToString: strTextName] && [strPass isEqualToString: strTextPass]) {
        NSLog(@"登陆成功");
        UIAlertController* alController = [UIAlertController alertControllerWithTitle: @"提示" message: @"验证成功" preferredStyle: UIAlertControllerStyleAlert];
        UIAlertAction* OKAction = [UIAlertAction actionWithTitle: @"确认" style: UIAlertActionStyleDefault handler: nil];
        
        [alController addAction: OKAction];
        
        [self presentViewController: alController animated: YES completion: nil];
    } else {
        UIAlertController* alController = [UIAlertController alertControllerWithTitle: @"提示" message: @"用户名或密码输入错误" preferredStyle: UIAlertControllerStyleAlert];
        UIAlertAction* OKAction = [UIAlertAction actionWithTitle: @"确认" style: UIAlertActionStyleCancel handler: nil];
        [alController addAction: OKAction]; 
        [self presentViewController: alController animated: YES completion: nil];
    }
}

- (void) pressRegister {
    NSLog(@"注册中");
}
@end
