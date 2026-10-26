//
//  ViewController.m
//  self_cell
//
//  Created by lose_sea on 2026/5/7.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView* tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView = [[UITableView alloc] initWithFrame: self.view.bounds style: UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    [self.tableView registerClass: [ProductCell class] forCellReuseIdentifier: @"ProductCellID"];
    
    [self.view addSubview: self.tableView];
    
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ProductCell* cell = [tableView dequeueReusableCellWithIdentifier: @"ProductCellID" forIndexPath: indexPath];
    cell.titleLabel.text = [NSString stringWithFormat: @"Row: %ld", indexPath.row];
    return cell; 
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 30;
}


@end
