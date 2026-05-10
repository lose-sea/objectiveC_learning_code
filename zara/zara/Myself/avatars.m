//
//  avatars.m
//  zara
//
//  Created by lose_sea on 2026/5/8.
//

#import "avatars.h"

@interface avatars ()
@property (nonatomic, strong) UICollectionView* collectionView;

@end

@implementation avatars

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setCollectionView];
}

- (void) setCollectionView {
    self.collectionView = [[UICollectionView alloc] init];
    [self.view addSubview: self.collectionView];
//    self.make
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
