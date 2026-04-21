//
//  VCFirst.m
//  反向传值
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
    self.title = @"视图一";
    self.view.backgroundColor = [UIColor systemCyanColor]; 
    
    UIBarButtonItem* btn = [[UIBarButtonItem alloc] initWithTitle: @"next" style: UIBarButtonItemStylePlain target: self action: @selector(pressBtn)];
    self.navigationItem.rightBarButtonItem = btn;
    
    
    UILabel* label = [[UILabel alloc] init];
    label.frame = CGRectMake(100, 100, 200, 40);
    label.backgroundColor = [UIColor systemRedColor];
    label.text = _text;

    [self.view addSubview: label];
}

- (void) pressBtn {
    VCSecond* vc = [[VCSecond alloc] init];
    vc.delegate = self;

    [self.navigationController pushViewController: vc animated: YES];
}

- (void) vcSecond:(id)vcSecond didSendText:(NSString *)text {
    self.text = text;
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
