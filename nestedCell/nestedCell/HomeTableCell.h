#import <UIKit/UIKit.h>

@interface HomeTableCell : UITableViewCell
<
UICollectionViewDelegate,
UICollectionViewDataSource
>

@property (nonatomic, strong) UICollectionView *collectionView;

@end
