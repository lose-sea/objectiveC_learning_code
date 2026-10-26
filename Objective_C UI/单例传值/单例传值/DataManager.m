//
//  DataManager.m
//  单例传值
//
//  Created by lose_sea on 2026/4/29.
//

#import "DataManager.h"

@interface DataManager ()

@end

@implementation DataManager

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
 
// 实现单例
+ (instancetype)shareManager {
    static DataManager *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[super allocWithZone: NULL] init];
    });
    return instance;
}



+ (instancetype) allocWithZone: (struct _NSZone*) zone {
    return [self shareManager];
}

- (id) copyWithZone: (NSZone*) zone {
    return self;
}

- (id) mutableCopy: (NSZone*) zone {
    return self;
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
