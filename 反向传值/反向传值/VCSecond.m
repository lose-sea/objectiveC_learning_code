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
    [self.view addSubview: _textField];
    
    UIBarButtonItem* btn = [[UIBarButtonItem alloc] initWithTitle: @"返回" style: UIBarButtonItemStylePlain target: self action: @selector(pressBack)];
    self.navigationItem.rightBarButtonItem = btn;
}

- (void) pressBack {
    if ([self.delegate respondsToSelector: @selector(vcSecond:didSendText:)]) {
        [self.delegate vcSecond: self didSendText: _textField.text];
    }
    
    [self.navigationController popViewControllerAnimated: YES];
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
