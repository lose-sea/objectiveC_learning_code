//
//  ViewController.m
//  FoldCell
//
//  Created by lose_sea on 2026/4/28.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self test01];
    // Do any additional setup after loading the view.
}
- (void) test01 {
    self.view.backgroundColor = [UIColor greenColor];
    _tableView = [[UITableView alloc] init];
    [self.view addSubview: _tableView];
    [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view).offset(200);
        make.left.mas_equalTo(self.view);
        make.height.mas_equalTo(300);
        make.width.mas_equalTo(self.view);
    }];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    _tableView.backgroundColor = [UIColor systemCyanColor];
    
    self.dataArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < 20; i++) {
        NSMutableString* str = [NSMutableString stringWithFormat: @"%d 号数据", i + 1];
        [_dataArray addObject: str];
    }
    // 注册cell
    [_tableView registerClass: [UITableViewCell class] forCellReuseIdentifier: @"cellID"];
    
    // 默认折叠
    _isExpanded = NO;
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath { 
    
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier: @"cellID" forIndexPath: indexPath];
    cell.textLabel.text = _dataArray[indexPath.row];
//    // 子标题
//    cell.detailTextLabel.text = @"test";
    
    UIImage* image = [UIImage imageNamed: [NSString stringWithFormat: @"%ld.jpg", indexPath.row]];
    cell.imageView.image = image;
    return cell;
}

// 展开返回真实数量, 折叠返回 0
- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _isExpanded == YES ? _dataArray.count : 0;
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}

- (UIView*) tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIButton* btn = [UIButton buttonWithType: UIButtonTypeSystem];
    btn.backgroundColor = [UIColor systemBlueColor];
    // 对齐方式: 左对齐
    btn.contentHorizontalAlignment  = UIControlContentHorizontalAlignmentLeft;
    
    // 箭头跟着状态改变
    NSString* arrow = _isExpanded ? @" ^ " : @" > ";    // 点击head切换状态
    [btn setTitle: [NSString stringWithFormat: @"%@This is title of head", arrow] forState: UIControlStateNormal];
    [btn setTitleColor: [UIColor whiteColor] forState: UIControlStateNormal];
    
    [btn addTarget: self action: @selector(headerTapped:) forControlEvents: UIControlEventTouchUpInside];
    return btn;
}



- (void) headerTapped: (UIButton*) sender {
    _isExpanded = !_isExpanded;
    
//    刷新 UITableView 的第 0 组（第一组）数据，并且用淡入淡出的动画效果更新
    [_tableView reloadSections: [NSIndexSet indexSetWithIndex: 0] withRowAnimation: UITableViewRowAnimationFade];
}

@end
