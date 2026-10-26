//
//  VCFirst.m
//  UI_test
//
//  Created by lose_sea on 2026/4/27.
//

#import "VCFirst.h"

@interface VCFirst ()

@end

@implementation VCFirst

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self test01];
    [self test02];
    
//    [self test03];
    // Do any additional setup after loading the view.
}
- (void) test03 {
//    创建一个头部视图
}

- (void) test02 {
    self.title = @"VCFirst";
    self.view.backgroundColor = [UIColor systemCyanColor];
    _label = [[UILabel alloc] init];
    _label.backgroundColor = [UIColor whiteColor];
    [self.view addSubview: _label];
    [_label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.view).offset(100);
        make.top.mas_equalTo(self.view).offset(200);
        make.height.mas_equalTo(40);
        make.width.mas_equalTo(200);
    }];
    
    UIBarButtonItem* item01 = [[UIBarButtonItem alloc] initWithTitle: @"next" style: UIBarButtonItemStylePlain target: self action: @selector(pressNext)];
    
    self.navigationItem.rightBarButtonItem = item01;
}

- (void) pressNext {
    VCSecond* vc = [[VCSecond alloc] init];
    vc.delegate = self;
    vc.recesiveText = self.label.text;
    [self.navigationController pushViewController: vc animated: YES];
}


- (void) vcSecond:(id)vcSecond didSendText:(NSString *)text {
    self.label.text = text;
//    self.receiveText = text;
}









- (void) test01 {
    self.title = @"VCFitst";
    self.view.backgroundColor = [UIColor greenColor];
    
    _textField = [[UITextField alloc] init];
    _textField.backgroundColor = [UIColor whiteColor];
    self.textField.keyboardType = UIKeyboardTypeDefault;
    [self.view addSubview: _textField];
    [_textField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.view).offset(100);
            make.top.equalTo(self.view).offset(200);
            make.height.mas_equalTo(40);
            make.width.mas_equalTo(200);
    }];
    
    
    UIBarButtonItem* item01 = [[UIBarButtonItem alloc] initWithTitle: @"next" style: UIBarButtonItemStylePlain target: self action: @selector(pressNext)];
    self.navigationItem.rightBarButtonItem = item01;
}



//- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [self.textField resignFirstResponder]; 
//}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
