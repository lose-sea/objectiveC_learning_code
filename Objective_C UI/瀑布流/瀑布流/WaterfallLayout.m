#import "WaterfallLayout.h"

@interface WaterfallLayout ()

/// 缓存所有布局属性
@property (nonatomic, strong) NSMutableArray<UICollectionViewLayoutAttributes *> *attributesArray;
/// 记录每一列的当前高度
@property (nonatomic, strong) NSMutableArray<NSNumber *> *columnHeights;
/// 内容总高度
@property (nonatomic, assign) CGFloat contentHeight;

@end

@implementation WaterfallLayout

- (instancetype)init {
    self = [super init];
    if (self) {
        _columnCount = 2;
        _columnSpacing = 10;
        _rowSpacing = 10;
        _sectionInset = UIEdgeInsetsZero;
        _attributesArray = [NSMutableArray array];
    }
    return self;
}

#pragma mark - 重写布局方法

- (void)prepareLayout {
    [super prepareLayout];
    
    // 1. 清空缓存
    [self.attributesArray removeAllObjects];
    self.contentHeight = 0;
    
    // 2. 获取 collectionView 的信息
    UICollectionView *cv = self.collectionView;
    if (!cv) return;
    
    NSInteger numberOfSections = [cv numberOfSections];
    if (numberOfSections == 0) return;
    
    // 3. 初始化每列高度数组 (全部用 sectionInset.top 作为起始高度)
    self.columnHeights = [NSMutableArray arrayWithCapacity:self.columnCount];
    for (NSInteger i = 0; i < self.columnCount; i++) {
        [self.columnHeights addObject:@(self.sectionInset.top)];
    }
    
    // 4. 计算每个 item 的宽度
    CGFloat totalWidth = CGRectGetWidth(cv.bounds);
    
    CGFloat availableWidth = totalWidth - self.sectionInset.left - self.sectionInset.right;
    CGFloat itemWidth = (availableWidth - (self.columnCount - 1) * self.columnSpacing) / self.columnCount;
    
    // 5. 遍历所有 item，计算 frame 并缓存
    for (NSInteger section = 0; section < numberOfSections; section++) {
        NSInteger itemCount = [cv numberOfItemsInSection:section];
        for (NSInteger item = 0; item < itemCount; item++) {
            NSIndexPath *indexPath = [NSIndexPath indexPathForItem:item inSection:section];
            
            // 获取委托提供的高度
            CGFloat itemHeight = [self.delegate collectionView:cv layout:self heightForItemAtIndexPath:indexPath itemWidth:itemWidth];
            
            // 找到当前高度最小的列
            NSInteger targetColumn = [self findSmallestColumn];
            CGFloat columnY = [self.columnHeights[targetColumn] floatValue];
            
            // 计算 x 坐标
            CGFloat x = self.sectionInset.left + targetColumn * (itemWidth + self.columnSpacing);
            CGFloat y = columnY;
            // 如果不是第一个 item，需要加上行间距
            if (columnY > self.sectionInset.top) {
                y += self.rowSpacing;
            }
            
            CGRect frame = CGRectMake(x, y, itemWidth, itemHeight);
            
            // 创建布局属性并缓存
            UICollectionViewLayoutAttributes *attributes = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:indexPath];
            attributes.frame = frame;
            [self.attributesArray addObject:attributes];
            
            // 更新该列高度
            CGFloat newColumnHeight = CGRectGetMaxY(frame);
            self.columnHeights[targetColumn] = @(newColumnHeight);
        }
    }
    
    // 6. 计算内容总高度 = 最高的那一列的高度 + 下内边距
    CGFloat maxColumnHeight = [[self.columnHeights valueForKeyPath:@"@max.floatValue"] floatValue];
    self.contentHeight = maxColumnHeight + self.sectionInset.bottom;
}

/// 找到当前总高度最小的列索引
- (NSInteger)findSmallestColumn {
    __block NSInteger minIndex = 0;
    __block CGFloat minHeight = [self.columnHeights[0] floatValue];
    [self.columnHeights enumerateObjectsUsingBlock:^(NSNumber *height, NSUInteger idx, BOOL *stop) {
        if (height.floatValue < minHeight) {
            minHeight = height.floatValue;
            minIndex = idx;
        }
    }];
    return minIndex;
}

- (NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect {
    // 返回所有与 rect 相交的布局属性
    NSMutableArray *result = [NSMutableArray array];
    for (UICollectionViewLayoutAttributes *attr in self.attributesArray) {
        if (CGRectIntersectsRect(rect, attr.frame)) {
            [result addObject:attr];
        }
    }
    return result;
}

- (UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)indexPath {
    // 在缓存中查找对应 indexPath 的属性
    for (UICollectionViewLayoutAttributes *attr in self.attributesArray) {
        if ([attr.indexPath isEqual:indexPath]) {
            return attr;
        }
    }
    return nil;
}

- (CGSize)collectionViewContentSize {
    return CGSizeMake(CGRectGetWidth(self.collectionView.bounds), self.contentHeight);
}

// 当 bounds 改变时是否需要重新布局 (例如旋转屏幕)
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds {
    CGRect oldBounds = self.collectionView.bounds;
    if (CGSizeEqualToSize(oldBounds.size, newBounds.size)) {
        return NO;
    }
    return YES;
}

@end
