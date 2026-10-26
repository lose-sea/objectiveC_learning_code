//
//  ViewController.m
//  Masonry
//
//  Created by lose_sea on 2026/4/22.
//

#import "ViewController.h"
#import <Masonry/Masonry.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [self test01];
//    [self test02];
    [self test03];
}

- (void) test03 {
    UIView* view = [[UIView alloc] init];
    view.backgroundColor = [UIColor systemCyanColor];
    [self.view addSubview: view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(20);
        make.bottom.offset(-300);
        make.left.offset(10);
        make.right.offset(-10);
     
//        make.width.mas_equalTo(100);
//        make.height.mas_equalTo(200);
    }];
    
    UIView* view2 = [[UIView alloc] init];
    view2.backgroundColor = [UIColor redColor];
    [self.view addSubview: view2];
    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.offset(20);
//        make.width.mas_equalTo(200);
//        make.top.equalTo(view.mas_bottom).offset(20);
//        make.height.mas_equalTo(40);
        
        
        make.left.equalTo(self.view.mas_left).offset(20);
        make.width.mas_equalTo(200);
        make.top.offset(100);
        
        // 设置宽高比例
        make.height.equalTo(view2.mas_width).multipliedBy(2);
    }];
    
}

- (void) test02 {
    UIView* view = [[UIView alloc] init];
    view.backgroundColor = [UIColor blueColor];
    [self.view addSubview: view];
     
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        
//        redBox.translatesAutoresizingMaskIntoConstraints = NO;
        // 宽高约束
        make.width.equalTo(@400);
        make.height.equalTo(@600);
//        make.width.mas_equalTo(400);
//        make.height.mas_equalTo(600);
        
        // 居中
//        make.centerX.equalTo(self.view);
//        make.centerY.equalTo(self.view);
        
        make.center.equalTo(self.view);
    }];
    
    UIView* view1 = [[UIView alloc] init];
    view1.backgroundColor = [UIColor redColor];
    [view addSubview: view1];
    
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(@300);
        make.height.equalTo(@200);
        
        make.top.offset(200);
        make.left.offset(40);
        
        
    }];
    
}



- (void) test01 {
    // 创建视图
    UIView* redBox = [[UIView alloc] init];
    redBox.backgroundColor = [UIColor redColor];
    // 先添加到子视图， 再写约束
    [self.view addSubview: redBox];
    
    // 用Masonry 添加约束
    [redBox mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.equalTo(self.view); // 居中于父视图
            make.width.mas_equalTo(200); //宽200pt
            make.height.mas_equalTo(100); //高100pt
    }];
}

@end
