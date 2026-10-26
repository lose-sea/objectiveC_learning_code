#import "HomeTableCell.h"

@implementation HomeTableCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style
              reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style
                reuseIdentifier:reuseIdentifier];

    if (self)
    {
        UICollectionViewFlowLayout *layout =
        [[UICollectionViewFlowLayout alloc] init];

        // 横向滚动
        layout.scrollDirection =
        UICollectionViewScrollDirectionHorizontal;

        // item大小
        layout.itemSize = CGSizeMake(100, 100);

        // 创建 collectionView
        _collectionView =
        [[UICollectionView alloc]
         initWithFrame:CGRectZero
         collectionViewLayout:layout];

        _collectionView.delegate = self;
        _collectionView.dataSource = self;

        _collectionView.backgroundColor =
        UIColor.whiteColor;

        // 注册cell
        [_collectionView registerClass:
         UICollectionViewCell.class
          forCellWithReuseIdentifier:@"item"];

        [self.contentView addSubview:_collectionView];
    }

    return self;
}

#pragma mark - 布局

- (void)layoutSubviews
{
    [super layoutSubviews];

    self.collectionView.frame =
    self.contentView.bounds;
}

#pragma mark - collectionView

// item数量
- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section
{
    return 10;
}

// cell
- (__kindof UICollectionViewCell *)
collectionView:(UICollectionView *)collectionView
cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell =
    [collectionView dequeueReusableCellWithReuseIdentifier:@"item"
                                              forIndexPath:indexPath];

    cell.backgroundColor = UIColor.orangeColor;

    return cell;
}

@end
