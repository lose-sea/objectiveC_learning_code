//
//  VCFirst.m
//  Music
//
//  Created by lose_sea on 2026/4/29.
//

#import "VCFirst.h"
#define ll long long

@interface VCFirst ()

@end

@implementation VCFirst

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"VCFirst";
    self.view.backgroundColor = [UIColor greenColor];
    // Do any additional setup after loading the view.
    self.scrollView = [[UIScrollView alloc] init];
    self.scrollView.backgroundColor = [UIColor systemCyanColor];
    [self.view addSubview: self.scrollView];
    [self.scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.view);
            make.left.mas_equalTo(self.view);
            make.right.mas_equalTo(self.view);
            make.bottom.mas_equalTo(self.view.mas_top).offset(200);
    }];
    self.scrollView.contentSize = CGSizeMake(self.view.bounds.size.width * 5, 200);
    for (ll i = 0; i < 5; i++) {
        NSString* strName = [NSString stringWithFormat: @"%lld.jpg", i + 1];
        UIImage* image = [UIImage imageNamed: strName];
        UIImageView* iView = [[UIImageView alloc] initWithImage: image];
        [self.scrollView addSubview: iView];
        [iView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.height.mas_equalTo(self.scrollView);
            make.width.mas_equalTo(self.scrollView);
        }];
    }
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
