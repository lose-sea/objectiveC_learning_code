#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol WaterfallLayoutDelegate <NSObject>
@required
/// 返回每个 item 的高度 (宽度由布局自行根据列宽计算)
- (CGFloat)collectionView:(UICollectionView *)collectionView
                   layout:(UICollectionViewLayout *)layout
 heightForItemAtIndexPath:(NSIndexPath *)indexPath
            itemWidth:(CGFloat)itemWidth;
@end

@interface WaterfallLayout : UICollectionViewLayout

@property (nonatomic, weak) id<WaterfallLayoutDelegate> delegate;

/// 列数，默认 2
@property (nonatomic, assign) NSInteger columnCount;
/// 列间距，默认 10
@property (nonatomic, assign) CGFloat columnSpacing;
/// 行间距，默认 10
@property (nonatomic, assign) CGFloat rowSpacing;
/// 内边距，默认 UIEdgeInsetsZero
@property (nonatomic, assign) UIEdgeInsets sectionInset;

@end

NS_ASSUME_NONNULL_END
