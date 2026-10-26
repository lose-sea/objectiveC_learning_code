//
//  imageShow.m
//  照片墙案例
//
//  Created by lose_sea on 2026/4/20.
//

#import "imageShow.h"

@interface imageShow ()

@end

@implementation imageShow

- (void) test01 {
    self.title = @"图片展示";
//    _imageView = [[UIImageView alloc] initWithImage: _image];
    _imageView = [[UIImageView alloc] init];
    _imageView.frame = CGRectMake(0, 0, 320, 480);
    
    _imageView.image = [UIImage imageNamed: [NSString stringWithFormat: @"%ld.jpg", _imageTag - 101]];
    [self.view addSubview: _imageView];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
