#import "ViewController.h"
#import "HomeTableCell.h"

@interface ViewController ()
<
UITableViewDelegate,
UITableViewDataSource
>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.view.backgroundColor = UIColor.whiteColor;

    self.tableView =
    [[UITableView alloc]
     initWithFrame:self.view.bounds
     style:UITableViewStylePlain];

    self.tableView.delegate = self;
    self.tableView.dataSource = self;

    // 行高
    self.tableView.rowHeight = 120;

    [self.tableView registerClass:
     HomeTableCell.class
           forCellReuseIdentifier:@"cell"];

    [self.view addSubview:self.tableView];
}

#pragma mark - tableView

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    HomeTableCell *cell =
    [tableView dequeueReusableCellWithIdentifier:@"cell"];

    return cell;
}

@end
