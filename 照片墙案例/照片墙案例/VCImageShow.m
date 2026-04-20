//
//  VCImageShow.m
//  照片墙案例
//
//  Created by lose_sea on 2026/4/16.
//

#import "VCImageShow.h"

@interface VCImageShow ()

@end

@implementation VCImageShow
- (void) test01 {
    self.title = @"图片展示";
    _imageView = [[UIImageView alloc] init];
    _imageView.frame = CGRectMake(0, 0, 320, 480);
    _imageView.image = [UIImage imageNamed: [NSString stringWithFormat: @"%ld.jpg", _imageTag - 100]]; 
    
    [self.view addSubview: _imageView];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self test01]; 
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
