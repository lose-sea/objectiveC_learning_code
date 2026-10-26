//
//  VCImageShow.h
//  照片墙案例
//
//  Created by lose_sea on 2026/4/16.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface VCImageShow : UIViewController
// 视图对象的tag
@property (nonatomic, assign) NSInteger imageTag;
// 图像对象
@property (nonatomic, strong) UIImage* image;
// 图像视图对象
@property (nonatomic, strong) UIImageView* imageView;
@end

NS_ASSUME_NONNULL_END
