//
//  VCSecond.m
//  UI_test
//
//  Created by lose_sea on 2026/4/27.
//

#import "VCSecond.h"

@interface VCSecond ()

@end

@implementation VCSecond

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //    [self test01];
    [self test02];
}

- (void) test02 {
    self.title = @"VCSecond";
    self.view.backgroundColor = [UIColor yellowColor];
    _textField = [[UITextField alloc] init];
    _textField.backgroundColor = [UIColor whiteColor];
    self.textField.placeholder = @"请输入内容";
    _textField.text = self.recesiveText;
    [self.view addSubview: _textField];
    [_textField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.view).offset(100);
            make.top.equalTo(self.view).offset(200);
            make.height.mas_equalTo(40);
            make.width.mas_equalTo(200);
    }];
    UIBarButtonItem* item = [[UIBarButtonItem alloc] initWithTitle: @"back" style: UIBarButtonItemStylePlain target: self action: @selector(pressBack)];
    self.navigationItem.leftBarButtonItem = item;
    
    UIBarButtonItem* item01 = [[UIBarButtonItem alloc] initWithTitle: @"传值" style: UIBarButtonItemStylePlain target: self action: @selector(pressSend)];
    self.navigationItem.rightBarButtonItem = item01; 
}

- (void) pressBack {
    if ([self.delegate respondsToSelector: @selector(vcSecond:didSendText:)]) {
        [self.delegate vcSecond: self didSendText: self.textField.text]; 
    }
    [self.navigationController popViewControllerAnimated: YES];
}

- (void) pressSend {
    if ([self.delegate respondsToSelector: @selector(vcSecond:didSendText:)]) {
        [self.delegate vcSecond: self didSendText: self.textField.text];
    }
}


- (void) test01 {
    self.title = @"VCSecond";
    self.view.backgroundColor = [UIColor yellowColor];
    UILabel* label = [[UILabel alloc] init];
    label.backgroundColor = [UIColor whiteColor];
    label.text = self.recesiveText;
    [self.view addSubview: label];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.view).offset(100);
            make.top.equalTo(self.view).offset(200);
            make.height.mas_equalTo(40);
            make.width.mas_equalTo(200);
    }];
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
