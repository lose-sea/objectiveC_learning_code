#import "ViewController.h"
#import "WaterfallLayout.h"

@interface ViewController () <UICollectionViewDataSource, WaterfallLayoutDelegate>

@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) NSMutableArray *heights; // 存储随机高度，仅用于演示

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 随机生成 30 个高度
    self.heights = [NSMutableArray array];
    for (int i = 0; i < 30; i++) {
        CGFloat h = 80 + arc4random_uniform(200); // 80~280 之间的随机高度
        [self.heights addObject:@(h)];
    }
    
    WaterfallLayout *layout = [[WaterfallLayout alloc] init];
    layout.delegate = self;
    layout.columnCount = 3;
    layout.columnSpacing = 8;
    layout.rowSpacing = 8;
    // 内边距: top, left, bottom, right
    layout.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10);
    
    self.collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:layout];
    self.collectionView.backgroundColor = [UIColor whiteColor];
    self.collectionView.dataSource = self;
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    [self.view addSubview:self.collectionView];
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.heights.count;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];

    cell.backgroundColor = [UIColor systemCyanColor];
    
    // 清除旧 subview
    for (UIView *sub in cell.contentView.subviews) {
        [sub removeFromSuperview];
    }
    UILabel *label = [[UILabel alloc] initWithFrame:cell.contentView.bounds];
    label.text = [NSString stringWithFormat:@"%ld", (long)indexPath.item];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor whiteColor];
    [cell.contentView addSubview:label];
    
    return cell;
}

#pragma mark - WaterfallLayoutDelegate

- (CGFloat)collectionView:(UICollectionView *)collectionView
                   layout:(UICollectionViewLayout *)layout
 heightForItemAtIndexPath:(NSIndexPath *)indexPath
                itemWidth:(CGFloat)itemWidth {
    // 返回预设的随机高度
    return [self.heights[indexPath.item] floatValue];
}

@end
