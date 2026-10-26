//
//  ViewController.m
//  UISearchController
//
//  Created by lose_sea on 2026/5/30.
//

#import "ViewController.h"
#import "MyViewController.h"


@interface ViewController () <UITableViewDataSource, UISearchResultsUpdating, UISearchBarDelegate, UITableViewDelegate>
// ViewController.m

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UISearchController *searchController;

@property (nonatomic, strong) NSArray<NSString *> *allData;       // 原始数据，永远不动
@property (nonatomic, strong) NSArray<NSString *> *filteredData;  // 显示用的数据

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"搜索";
    // Do any additional setup after loading the view.
    
    [self setData];
    [self setupTableView];
    [self setupSearchController];
    
    if (@available(iOS 26.0, *)) {
        self.navigationItem.preferredSearchBarPlacement = UINavigationItemSearchBarPlacementStacked;
    // 设置不允许将UISearchController放在工具栏中,保证UISearchController在上方的导航栏中
        self.navigationItem.searchBarPlacementAllowsToolbarIntegration = NO;
    }
}

- (void) setData {
    //  准备数据
    self.allData = @[@"Apple", @"Banana", @"Cherry", @"Date", @"Fig", @"Grape"];
    self.filteredData = self.allData;
}

- (void) setupSearchController {
    MyViewController* vc = [[MyViewController alloc] init];
    UISearchController *searchController = [[UISearchController alloc] initWithSearchResultsController: vc];

    searchController.searchResultsUpdater = vc;
    // 设置结果更新代理
    searchController.obscuresBackgroundDuringPresentation = YES;
    // 搜索时是否模糊背景（默认YES）
    searchController.hidesNavigationBarDuringPresentation = YES;
    // 搜索时是否隐藏导航栏（默认YES）
    searchController.searchBar.placeholder = @"搜索";
    // 占位文字
    
    self.searchController = searchController;
    
    // 监听搜索栏事件
    searchController.searchBar.delegate = self;
    
    // 将 searchBar 添加到导航栏
    self.navigationItem.searchController = searchController;
     
    // 设置键盘样式
    self.searchController.searchBar.keyboardType = UIKeyboardTypeDefault;
    
    // 滚动时保持 searchBar 在顶部  
    self.navigationItem.hidesSearchBarWhenScrolling = NO;
    
    UIBarButtonItem* item1 = [[UIBarButtonItem alloc] initWithTitle: @"back" style: UIBarButtonItemStylePlain target: self action: @selector(pressBtn)];
    self.navigationItem.rightBarButtonItem = item1;
}

- (void) pressBtn {
    NSLog(@"点击啦按钮");
}

- (void) setupTableView {
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    [self.view addSubview:self.tableView];
}

// 用户输入时自动调用
- (void)updateSearchResultsForSearchController:(UISearchController *)searchController {
    NSLog(@"搜索框结果更新");
    
    NSString *text = searchController.searchBar.text;
    
    if (text.length == 0) {
        // 没有输入，显示全部
        self.filteredData = self.allData;
    } else {
        // 有输入，过滤数据
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF CONTAINS[cd] %@", text];
        self.filteredData = [self.allData filteredArrayUsingPredicate:predicate];
    }
    // 刷新列表
    [self.tableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.filteredData.count; // 始终用 filteredData
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"
                                                            forIndexPath:indexPath];
    cell.textLabel.text = self.filteredData[indexPath.row];
    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath: indexPath animated: YES];
}

#pragma mark - 搜索栏事件监听

// 询问是否允许开始编辑（返回 NO 可阻止键盘弹出）
- (BOOL)searchBarShouldBeginEditing:(UISearchBar *)searchBar {
    return YES;
}

// 已经开始编辑（键盘已弹出）
- (void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar {
    NSLog(@"开始编辑");
}

// 询问是否允许结束编辑（返回 NO 可阻止收起键盘）
- (BOOL)searchBarShouldEndEditing:(UISearchBar *)searchBar {
    return YES;
}

// 已经结束编辑（键盘已收起）
- (void)searchBarTextDidEndEditing:(UISearchBar *)searchBar {
    NSLog(@"已经结束编辑");
}

// 搜索框内的文字每次改变时调用（实时输入）
- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText {
    NSLog(@"遵守协议, 搜索框结果更新");
}

// 点击键盘上的“搜索”按钮（returnKeyType 为 UIReturnKeySearch）
- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    NSLog(@"点击了搜索按钮");
}


// 点击“书签”按钮（需要设置 showsBookmarkButton = YES）
- (void)searchBarBookmarkButtonClicked:(UISearchBar *)searchBar {
    NSLog(@"点击“书签”按钮");
}

// 点击“结果列表”按钮（需要设置 showsResultsListButton = YES，已废弃）
- (void)searchBarResultsListButtonClicked:(UISearchBar *)searchBar {
    NSLog(@"点击了结果列表");
}

@end
