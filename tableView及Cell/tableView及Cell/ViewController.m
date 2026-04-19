//
//  ViewController.m
//  tableView
//
//  Created by lose_sea on 2026/4/17.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [self test03];
    [self test04];
}

- (void) test04 {
    _tableView = [[UITableView alloc] initWithFrame: self.view.bounds style: UITableViewStylePlain];
    
    // 自动调整子视图大小
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    // 设置代理
    _tableView.dataSource = self;
    _tableView.delegate = self;
    _tableView.backgroundColor = [UIColor systemCyanColor];
    
    [self.view addSubview: _tableView];
    _arrayData = [[NSMutableArray alloc] init];
        
    for (int i = 0; i < 20; i++) {
        NSString* str = [NSString stringWithFormat: @"%d 号数据", i + 1];
        [_arrayData addObject: str];
//        [_tableView reloadData];
    }
    
    [self.tableView registerClass: [UITableViewCell class] forCellReuseIdentifier: @"cell"];
}
   
// 每组数据的行数
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1000;
}

// 配置cell
//- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    NSString* strName = @"cell";
//    UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier: strName];
//    if (cell == nil) {
//        cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault reuseIdentifier: strName];
//    }
////    cell.textLabel.text = _arrayData[indexPath.row];
//    if (indexPath.row <= 12) {
//        cell.textLabel.text = [NSString stringWithFormat: @"hello"];
//    }
//    return cell;
//}


- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier: @"cell" forIndexPath: indexPath];
    cell.textLabel.text = @"hello";
    
    return cell;
}
 
- (void) test01 {
    // 创建视图的位置
    // 数据视图的风格
    // UITableViewStylePlain: 普通风格
    // UITableViewStyleGrouped: 分组风格
    _tableView = [[UITableView alloc] initWithFrame: self.view.bounds style: UITableViewStylePlain];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.backgroundColor = [UIColor systemCyanColor];
    
    [self.view addSubview: _tableView];
}

- (void) test02 {
    _tableView = [[UITableView alloc] initWithFrame: CGRectMake(0, 40, 320, 536) style: UITableViewStyleGrouped];
    
    _tableView.backgroundColor = [UIColor systemCyanColor];
    // 设置代理对象
    _tableView.delegate = self;
    // 设置数据代理
    _tableView.dataSource = self;
    
    [self.view addSubview: _tableView];
    
    // 创建一个可变数组
    _arrayData = [[NSMutableArray alloc] init];
         
    for (int i = 'A'; i <= 'Z'; i++) {
        NSMutableArray* arraySmall = [[NSMutableArray alloc] init];
        for (int j = 0; j <= 5; j++) {
            NSString* str  =[NSString stringWithFormat: @"%c%d", i, j];
            [arraySmall addObject: str];
        }
        [_arrayData addObject: arraySmall];
    }
}

- (void) test03 {
    _tableView = [[UITableView alloc] initWithFrame: self.view.bounds style: UITableViewStylePlain];
    
    // 自动调整子视图到的大小
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    
    // 设置代理
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    // 数据视图头部视图的设定
    _tableView.tableHeaderView = nil;
    // 数据视图尾部视图的设定
    _tableView.tableFooterView = nil;
    [self.view addSubview: _tableView];
    
    _arrayData = [[NSMutableArray alloc] init];
    for (int i = 1; i <= 20; i++) {
        NSString* str = [NSString stringWithFormat: @"%d 号数据", i];
        
        [_arrayData addObject: str];
    }
    // 当数据视图的数据发生变化时
    // 更新数据视图, 重新加载数据
    [_tableView reloadData];
    
    // 注册cell
    
    
//    [self createBtn];
}


//- (void) createBtn {
//    _isEdit = NO;
//    _btnEdit = [[UIBarButtonItem alloc] initWithTitle: @"Edit" style: UIBarButtonItemStylePlain target: self action: @selector(pressEdit)];
//    _btnFinish = [[UIBarButtonItem alloc] initWithTitle: @"Finish" style: UIBarButtonItemStylePlain target: self action: @selector(pressFinish)];
//    _btnDelete = [[UIBarButtonItem alloc] initWithTitle: @"Delete" style: UIBarButtonItemStylePlain target: self action: @selector(pressDelete)];
//
//    self.navigationItem.rightBarButtonItem = _btnEdit;
//}
//
//
//- (void) pressEdit {
//    _isEdit = YES;
//    self.navigationItem.rightBarButtonItem = _btnFinish;
//    [_tableView setEditing: YES];
//    self.navigationItem.leftBarButtonItem = _btnDelete;
//}
//- (void) pressFinish {
//    _isEdit = NO;
//    self.navigationItem.rightBarButtonItem = _btnEdit;
//    [_tableView setEditing: NO];
//    self.navigationItem.leftBarButtonItem = nil;
//}
//
//- (void) pressDelete {
//
//}


//// 设置每组的行数
//- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    return _arrayData.count;
//}
//// 设置组数
//// 默认是 1
//- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
//    return 1;
//}

//- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    NSString* str = @"cell";
//    UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier: str];
//    if (cell == nil) {
//        cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault reuseIdentifier: str];
//    }
//    cell.textLabel.text = _arrayData[indexPath.row];
//    return cell;
//}

//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID"
//                                                            forIndexPath:indexPath];
//    cell.textLabel.text = _arrayData[indexPath.row];
//    return cell;
//}
//
//// 设置行高
//- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    return 100;
//}
//
//// 头标题
//- (NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
//    return @"title of head";
//}
//// 尾标题
//- (NSString*) tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
//    return @"title of tail";
//}
//
//// 获取头部高度
//- (CGFloat) tableView: (UITableView*) tableView heightForHeaderInSection:(NSInteger)section {
//    return 100;
//}
//
//// 尾部高度
//- (CGFloat) tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
//    return 200;
//}
//
//// 行被点击的时候调用的方法
//- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
//    NSLog(@"选中了 %ld %ld", indexPath.section, indexPath.row);
//}
//
//// 取消选中(切换选中时调用)
//- (void) tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
//    NSLog(@"取消选中单元格: %ld %ld", indexPath.section, indexPath.row);
//}
//
//// 单元格显示状态
//- (UITableViewCellEditingStyle) tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
//    // 默认显示删除状态
////    return UITableViewCellEditingStyleDelete;
//
//    // 插入状态
////    return UItableViewCellEditingStyleInsert;
//    // 空状态
////    return UITableViewCellEditingStyleNone;
//
//    // 多选状态
////    return UITableViewCellEditingStyleDelete|UITableViewCellEditingStyleInsert;
//
//    return UITableViewCellEditingStyleDelete;
//}
//
//// 可以显示编辑状态, 当手指在单元格上移动时会调用此方法
//- (void) tableView: (UITableView*) tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
//    // 删除数据对应的数据源
//    [_arrayData removeObjectAtIndex: indexPath.row];
//
//    // 当数据发生变化, 重新加载数据
//    [_tableView reloadData];
//    NSLog(@"delete");
//}

//// 选中单元格时调用
//- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
////    NSLog(@"选中单元格: %ld %ld", indexPath.section, indexPath.row);
//}

//// 取消选中(切换选中时调用)
//- (void) tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
//    NSLog(@"取消选中单元格: %ld %ld", indexPath.section, indexPath.row);
//}






//// 每组元素个数
//- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    return _arrayData.count;
//}

//- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    NSString* str = @"cell";
//
//    // 尝试获取可以复用的单元格
//    // 如果得不到, 返回 nil
//    UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier: str];
//
//    if (cell == nil) {
//        cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault reuseIdentifier:  str];
//    }
//    cell.textLabel.text = [_arrayData objectAtIndex: indexPath.row];
//    return cell;
//}

//// 获取组数
//// 默认组数为 1
//- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
//    return 1;
//}


//// 每组头部标题
//- (NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
//    return @"title of head";
//}
//// 尾部标题
//- (NSString*) tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
//    return @"title of tail";
//}




// 每组元素个数
//- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    NSInteger numRow = [[_arrayData objectAtIndex: section] count];
//    return numRow;
//}
//// 获取组数
//- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
//    return _arrayData.count;
//}
//
//- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    NSString* str = @"cell";
//
//    UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier: str];
//    if (cell == nil) {
//        cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault reuseIdentifier: str];
//    }
//    cell.textLabel.text = _arrayData[indexPath.section][indexPath.row];
//
//    return cell;
//}
//
//// 获取高度
//- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    return 100;
//}




// 获取每组元素的个数
// 必须要实现的协议函数
// 程序在显示数据视图时会调用此函数
// 返回值:每组元素的个数
// 数据视图的对象本身
// p: 那一组需要的行数
//- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    return 5;
//}

//// 设置数据视图的组数
//- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
//    return 3;
//}
////  创建单元格主函数
//- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    NSString* cellStr = @"cell1";
//    UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier: cellStr];
//    if (cell == nil) {
//        // 创建单元格对象
//        // 参数一: 单元格的样式
//        // 参数二: 单元个的复用标记
//        cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault reuseIdentifier: cellStr];
//    }
//    NSString* str = [NSString stringWithFormat: @"第 %ld 组, 第%ld行", indexPath.section, indexPath.row];
//    // 将单元格的主文字内容赋值
//    cell.textLabel.text = str;
//    return cell;
//}





@end
