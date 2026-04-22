//
//  ViewController.h
//  UICollectionView
//
//  Created by lose_sea on 2026/4/22.
//

#import <UIKit/UIKit.h>
#import "ImageShow.h"

@interface ViewController : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource>
@property (nonatomic) NSMutableArray* array; 

@end

