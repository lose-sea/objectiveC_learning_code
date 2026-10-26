//
//  ViewController.h
//  FoldCell
//
//  Created by lose_sea on 2026/4/28.
//

#import <UIKit/UIKit.h>
#import <Masonry/Masonry.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic) UITableView* tableView; 
@property (nonatomic) NSMutableArray* dataArray;

@property (nonatomic) BOOL isExpanded; // 记录展开状态
@end

