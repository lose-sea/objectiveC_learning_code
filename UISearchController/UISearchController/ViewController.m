//
//  ViewController.m
//  UISearchController
//
//  Created by lose_sea on 2026/5/30.
//

#import "ViewController.h"
#import "MyViewController.h"


@interface ViewController () <UITableViewDataSource, UISearchResultsUpdating, UITabBarDelegate>
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
    
    // ① 准备数据
    self.allData = @[@"Apple", @"Banana", @"Cherry", @"Date", @"Fig", @"Grape"];
    self.filteredData = self.allData;
    
    [self setupTableView];
    [self setupSearchController];
    
    if (@available(iOS 26.0, *)) {
            self.navigationItem.preferredSearchBarPlacement = UINavigationItemSearchBarPlacementStacked;
            self.navigationItem.searchBarPlacementAllowsToolbarIntegration = NO; // 设置不允许将UISearchController放在工具栏中,保证UISearchController在上方的导航栏中
        }
}


- (void) setupSearchController {

    
    
    MyViewController* vc = [[MyViewController alloc] init];
    UISearchController *searchController = [[UISearchController alloc] initWithSearchResultsController: vc];
    
    searchController.searchResultsUpdater = vc;               // 设置结果更新代理
//    searchController.searchBar.delegate = self;
    searchController.obscuresBackgroundDuringPresentation = NO; // 搜索时是否模糊背景（默认YES）
    searchController.hidesNavigationBarDuringPresentation = NO; // 搜索时是否隐藏导航栏（默认YES）
    searchController.searchBar.placeholder = @"搜索";            // 占位文字
//    searchController.searchBar.delegate = self;                 // 可选：监听搜索栏事件
    searchController.searchBar.returnKeyType = UIReturnKeySearch;
    self.searchController = searchController;
    
    // 将 searchBar 添加到导航栏
    self.navigationItem.searchController = searchController;
     
    // 设置键盘样式
    self.searchController.searchBar.keyboardType = UIKeyboardTypeDefault;
    
    // 可选：滚动时保持 searchBar 在顶部
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
@end
