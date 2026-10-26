//
//  ViewController.m
//  Data-DrivenCell
//
//  Created by lose_sea on 2026/5/12.
//

#import "ViewController.h"
#import "StudentCell.h"
#import "Student.h"


@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray<Student *> *students;  // 数据数组

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1. 初始化数据
    [self initData];
    
    // 2. 创建 tableView
    [self setupTableView];
    
    // 3. 监听 Cell 按钮点击通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleLikeButtonTapped:) name:@"CellLikeButtonTapped" object:nil];
}

- (void)initData {
    self.students = [NSMutableArray array];
    
    Student *s1 = [[Student alloc] initWithName:@"张三" score:95];
    Student *s2 = [[Student alloc] initWithName:@"李四" score:72];
    Student *s3 = [[Student alloc] initWithName:@"王五" score:58];
    Student *s4 = [[Student alloc] initWithName:@"赵六" score:88];
    Student *s5 = [[Student alloc] initWithName:@"小明" score:45];
    
    [self.students addObject:s1];
    [self.students addObject:s2];
    [self.students addObject:s3];
    [self.students addObject:s4];
    [self.students addObject:s5];
}

- (void)setupTableView {
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerClass:[StudentCell class] forCellReuseIdentifier:@"StudentCell"];
    [self.view addSubview:self.tableView];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.students.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    StudentCell *cell = [tableView dequeueReusableCellWithIdentifier:@"StudentCell" forIndexPath:indexPath];
    
    // 核心：数据驱动 - 取出数据，传给 Cell
    Student *student = self.students[indexPath.row];
    [cell setData:student];
    
    return cell;
}

#pragma mark - 处理 Cell 按钮点击

- (void)handleLikeButtonTapped:(NSNotification *)notification {
    StudentCell *cell = notification.object;
    NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
    
    if (!indexPath) return;
    
    // 关键：修改 Model 中的数据
    Student *student = self.students[indexPath.row];
    student.isLiked = !student.isLiked;
    
    // 刷新这一行（会重新调用 cellForRow，触发 setData: 重新显示）
    [self.tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
}

- (void)dealloc {
    // 移除通知监听
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end

