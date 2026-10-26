//
//  VCFirst.m
//  单例传值
//
//  Created by lose_sea on 2026/4/29.
//

#import "VCFirst.h"

@interface VCFirst ()

@end

@implementation VCFirst

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor greenColor];
    self.title = @"VCFirst";
    
    // 创建显示 Label
    self.showLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 250, 300, 50)];
    self.showLabel.textAlignment = NSTextAlignmentCenter;
    self.showLabel.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview: self.showLabel];
    
    // 创建跳转按钮
    UIBarButtonItem* item = [[UIBarButtonItem alloc] initWithTitle: @"next" style: UIBarButtonItemStylePlain target: self action: @selector(pushToSecond)];
    self.navigationItem.rightBarButtonItem = item;
    
    
    
    // 从单例中读取数据
    NSString* saveText = [DataManager shareManager].shareText;
    if (saveText.length > 0) {
        self.showLabel.text = [NSString stringWithFormat: @"上次保存: %@", saveText];
    } else {
        self.showLabel.text = @"等待接收文字...";
    }

}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear: animated];
    
    // 每次回到这个界面时, 重新读取单例中的最新数据
    NSString* latesText = [DataManager shareManager].shareText;
    if (latesText.length > 0) {
        self.showLabel.text = [NSString stringWithFormat: @"上次保存: %@", latesText];
    }
}


- (void) pushToSecond {
    VCSecond* vc = [[VCSecond alloc] init];
    [self.navigationController pushViewController: vc animated: YES];
}
@end

