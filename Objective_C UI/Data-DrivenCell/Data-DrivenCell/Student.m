//
//  Student.m
//  Data-DrivenCell
//
//  Created by lose_sea on 2026/5/13.
//

#import "Student.h"

@interface Student ()

@end

@implementation Student

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (instancetype)initWithName:(NSString *)name score:(NSInteger)score {
    self = [super init];
    if (self) {
        _name = name;
        _score = score;
        _isLiked = NO;
    }
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
