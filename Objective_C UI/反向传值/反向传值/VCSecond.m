//
//  VCSecond.m
//  反向传值
//
//  Created by lose_sea on 2026/4/21.
//

#import "VCSecond.h"

@interface VCSecond ()

@end

@implementation VCSecond

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self test01];
}

- (void) test01 {
    self.view.backgroundColor = [UIColor greenColor]; 
    
    _textField = [[UITextField alloc] init];
    _textField.borderStyle = UITextBorderStyleLine;
    _textField.frame = CGRectMake(100, 100, 200, 40);
    _textField.backgroundColor = [UIColor systemCyanColor];
    _textField.placeholder = @"请输入你要输入的内容";
    _textField.text = self.TextField_Text;
    [self.view addSubview: _textField];
    
  UIBarButtonItem* item = [[UIBarButtonItem alloc] initWithTitle: @"传值并返回" style: UIBarButtonItemStylePlain target: self action: @selector(pressChange)];
    self.navigationItem.leftBarButtonItems = @[item];
}



- (void) pressChange {
    if ([self.delegate respondsToSelector: @selector(vcSecond:didSendText:)]) {
        [self.delegate vcSecond: self didSendText: _textField.text];
    }
    [self.navigationController popViewControllerAnimated: YES];
}
- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.textField resignFirstResponder];
}
 

- (void) textFieldDidEndEditing:(UITextField *)textField {
    [self.delegate vcSecond: self didSendText: _textField.text]; 
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
