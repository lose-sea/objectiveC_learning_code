//
//  ViewController.h
//  tableView
//
//  Created by lose_sea on 2026/4/17.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<
// 实现数据视图的普通协议
// 数据视图的普通事件处理
UITableViewDelegate,
// 实现数据视图的数据代理协议
UITableViewDataSource
>

// 定义一个数据视图对象,
// 数据视图用来显示大量相同格式的大量信息的视图
@property (nonatomic, strong) UITableView* tableView;

// 声明一个数据源
@property (nonatomic, strong) NSMutableArray* arrayData;

// 添加导航按钮
@property (nonatomic, strong) UIBarButtonItem* btnEdit;
@property (nonatomic, strong) UIBarButtonItem* btnFinish;
@property (nonatomic, strong) UIBarButtonItem* btnDelete;
@property (nonatomic, assign) BOOL isEdit;


@end

