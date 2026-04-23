//
//  ViewController.m
//  UICollectionView
//
//  Created by lose_sea on 2026/4/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //    [self text01];
    [self test02];
}

//- (void) text01 {
//    self.view.backgroundColor = [UIColor systemCyanColor];
//    
//    //FlowLayout（流式布局)是一种自动换行的布局方式，核心是子元素按顺序排列，一行排满后自动换到下一行/列
//    UICollectionViewFlowLayout* flowLayout = [[UICollectionViewFlowLayout alloc] init];
//    
//    UICollectionView* collectionView = [[UICollectionView alloc] initWithFrame: self.view.bounds collectionViewLayout: flowLayout];
//    
//    collectionView.dataSource = self;
//    
//    // 注册cell
//    [collectionView registerClass: [UICollectionViewCell class] forCellWithReuseIdentifier: @"UICollectionViewID"];
//    
//    [self.view addSubview: collectionView];
//}
//
//- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
//    return 21;
//}
//
//- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
//    UICollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier: @"UICollectionViewID" forIndexPath: indexPath];
//    
//    cell.backgroundColor = [UIColor systemRedColor];
//    
//    // 默认cell 是50 * 50 大小的
//    return cell;
//}

- (void) test02 {
    self.title = @"view first";
    self.view.backgroundColor = [UIColor systemCyanColor];
    self.array = [[NSMutableArray alloc] init];
    UICollectionViewFlowLayout* flowLayout = [[UICollectionViewFlowLayout alloc] init];
    // 每个cell的大小
    flowLayout.itemSize = CGSizeMake(100, 160);
    // 同一行中cell之间的间隔大小
    flowLayout.minimumLineSpacing = 10;
    // 行与行的间隔
    flowLayout.minimumInteritemSpacing = 10;
    
    UICollectionView* collectionView = [[UICollectionView alloc] initWithFrame: self.view.bounds collectionViewLayout: flowLayout];
    collectionView.delegate = self;
    collectionView.dataSource = self;
    
    collectionView.backgroundColor = [UIColor blackColor];
    
//    UIBarButtonItem* item = [[UIBarButtonItem alloc] initWithTitle: @"next" style: UIBarButtonItemStylePlain target: self action: @selector(pressNext)];
//    self.navigationItem.rightBarButtonItem = item;
    
    // 注册cell
    [collectionView registerClass: [UICollectionViewCell class] forCellWithReuseIdentifier: @"UICollectionViewCellID"];
    
    
    for (int i = 0; i < 30; i++) {
        NSString* strName = [NSString stringWithFormat: @"%d.jpg", i + 1];
        UIImage* image = [UIImage imageNamed: strName];
        [self.array addObject: image];
    }
    
    [self.view addSubview: collectionView];
}

- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 30;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier: @"UICollectionViewCellID" forIndexPath: indexPath];
    cell.backgroundColor = [UIColor systemRedColor];
    for (UIView* view in cell.contentView.subviews) {
        [view removeFromSuperview];
    }
    
    UIImageView* iView = [[UIImageView alloc] initWithImage: self.array[indexPath.item]];
    iView.frame = cell.contentView.bounds;
    
    
////    保持图片的宽高比不变
////    让图片填满整个 UIImageView，哪怕超出 bounds 也没关系
////    超出部分需要配合 clipsToBounds = YES 来裁剪掉，否则会显示在 cell 外面
//
//    iView.contentMode = UIViewContentModeScaleAspectFill;
////    开启裁剪，让超出 UIImageView 边界的内容不显示
//    iView.clipsToBounds = YES;
    
    
    [cell.contentView addSubview: iView];
    return cell;
}
// 实现点击方法
- (void) collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%ld", indexPath.item);
    
    ImageShow* vc = [[ImageShow alloc] init];
    UIImageView* iView = [[UIImageView alloc] initWithImage: self.array[indexPath.item]];
    vc.view.backgroundColor = [UIColor blackColor];
    
    vc.title = @"image show";
    [vc.view addSubview: iView];
    iView.frame = CGRectMake(10, 120, 400, 600);
    
    [self.navigationController pushViewController: vc animated: YES];
    
}

@end
