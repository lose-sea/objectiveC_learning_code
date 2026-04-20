//
//  ViewController.m
//  UIPickerView
//
//  Created by lose_sea on 2026/4/20.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self test01];
}

- (void) test01 {
    // 创建选择视图对象
    // 显示多组数据和多个元素以供选择
    // 例如选则日期, 时间, 日历效果
    UIPickerView* pickerView = [[UIPickerView alloc] init];
    
    pickerView.frame = CGRectMake(10, 100, 300, 200);
    
    // 设置普通代理对象为当前的视图控制器
    pickerView.delegate = self;
    pickerView.dataSource = self;
    
    [self.view addSubview: pickerView];
}

// 每组元素个数
// p1: 调用此协议的选择视图本身
// p2: 第几组的元素个数
- (NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return 45;
}
// 组数
- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 3;
}

// 显示每个元素的内容
- (NSString*) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    NSString* str = [NSString stringWithFormat: @"%ld组%ld行", component + 1, row + 1];
    return str;
}

// 设置每行元素的高度
- (CGFloat) pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component {
    return 100;
}

// 可以将自定义的视图显示到屏幕上
- (UIView*) pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view {
    UIImage* image = [UIImage imageNamed: [NSString stringWithFormat: @"%ld.jpg", row + 1]];
    
    UIImageView* iView = [[UIImageView alloc] initWithImage: image];
    
    iView.frame = CGRectMake(0, 0, 40, 40);
    return iView;
}
@end
