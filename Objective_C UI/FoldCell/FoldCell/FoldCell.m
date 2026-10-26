//
//  FoldCell.m
//  FoldCell
//
//  Created by lose_sea on 2026/4/28.
//

#import "FoldCell.h"

@interface FoldCell ()
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *dataArray;

@property (nonatomic, strong) UIButton *foldBtn;

@property (nonatomic, copy) NSString *selectionItem;

// 核心状态
@property (nonatomic, assign) BOOL isExpanded;

// 关键：高度约束
@property (nonatomic, strong) MASConstraint *tableHeightConstraint;

@end

@implementation FoldCell

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setupData];
    [self setupUI];
}

#pragma mark - 数据

- (void)setupData {
    self.dataArray = [NSMutableArray array];
    
    for (int i = 0; i < 20; i++) {
        NSString *str = [NSString stringWithFormat:@"%d 号数据", i + 1];
        [self.dataArray addObject:str];
    }
    
    // 默认选中第一个
    self.selectionItem = self.dataArray.firstObject;
    self.isExpanded = NO;
}

#pragma mark - UI

- (void)setupUI {
    
    // tableView
    self.tableView = [[UITableView alloc] init];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.rowHeight = 60;
    self.tableView.tableFooterView = [UIView new];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cellID"];
    
    [self.view addSubview:self.tableView];
    
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(200);
        make.left.right.equalTo(self.view);
        
        // 初始高度：只显示一行
        self.tableHeightConstraint = make.height.mas_equalTo(60);
    }];
    
    
    // 按钮
    self.foldBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    self.foldBtn.backgroundColor = [UIColor systemBlueColor];
    
    [self.foldBtn setTitle:@"展开" forState:UIControlStateNormal];
    [self.foldBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    [self.foldBtn addTarget:self
                    action:@selector(toggleFold)
          forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.foldBtn];
    
    [self.foldBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.tableView.mas_bottom).offset(10);
        make.centerX.equalTo(self.view);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(40);
    }];
}

#pragma mark - 折叠/展开

- (void)toggleFold {
    
    self.isExpanded = !self.isExpanded;
    
    CGFloat rowHeight = 60;
    CGFloat newHeight;
    
    if (self.isExpanded) {
        newHeight = self.dataArray.count * rowHeight;
        [self.foldBtn setTitle:@"收起" forState:UIControlStateNormal];
    } else {
        newHeight = rowHeight;
        [self.foldBtn setTitle:@"展开" forState:UIControlStateNormal];
    }
    
    // 更新约束
    [self.tableView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(newHeight);
    }];
    
    // 动画
    [UIView animateWithDuration:0.25 animations:^{
        [self.view layoutIfNeeded];
    }];
    
    [self.tableView reloadData];
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.isExpanded ? self.dataArray.count : 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID"
                                                            forIndexPath:indexPath];
    
    if (self.isExpanded) {
        cell.textLabel.text = self.dataArray[indexPath.row];
        cell.backgroundColor = [UIColor whiteColor];
    } else {
        cell.textLabel.text = self.selectionItem;
        cell.backgroundColor = [UIColor colorWithWhite:0.95 alpha:1];
    }
    
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (self.isExpanded) {
        self.selectionItem = self.dataArray[indexPath.row];
        [self toggleFold];
    }
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
