//
//  SuperView.h
//  手动布局视图
//
//  Created by lose_sea on 2026/4/12.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SuperView : UIView
@property (nonatomic, strong) UIView* view01;
@property (nonatomic, strong) UIView* view02;
@property (nonatomic, strong) UIView* view03;
@property (nonatomic, strong) UIView* view04;
- (void) createSubViews; 
@end

NS_ASSUME_NONNULL_END
