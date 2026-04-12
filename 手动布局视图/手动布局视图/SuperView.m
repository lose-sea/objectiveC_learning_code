//
//  SuperView.m
//  手动布局视图
//
//  Created by lose_sea on 2026/4/12.
//

#import "SuperView.h"

@implementation SuperView
- (void) createSubViews {
    _view01 = [[UIView alloc] init];
    _view01.frame = CGRectMake(0, 0, 40, 40);
    _view01.backgroundColor = [UIColor systemRedColor];

    _view02 = [[UIView alloc] init];
    _view02.frame = CGRectMake(self.bounds.size.width - 40, 0, 40, 40);
    _view02.backgroundColor = [UIColor systemRedColor];
    
    _view03 = [[UIView alloc] init];
    _view03.frame = CGRectMake(0, self.bounds.size.height - 40, 40, 40);
    _view03.backgroundColor = [UIColor systemRedColor];
    
    _view04 = [[UIView alloc] init];
    _view04.frame = CGRectMake(self.bounds.size.width - 40, self.bounds.size.height - 40, 40, 40);
    _view04.backgroundColor = [UIColor systemRedColor];
    
    [self addSubview: _view01];
    [self addSubview: _view02];
    [self addSubview: _view03];
    [self addSubview: _view04];
}
// 当需要重新布局的时候会调用此函数
- (void) layoutSubviews {
    
    [UIView animateWithDuration: 1 animations: ^ {
        _view01.backgroundColor = [UIColor systemRedColor];
        _view02.frame = CGRectMake(self.bounds.size.width - 40, 0, 40, 40);
        _view03.frame = CGRectMake(0, self.bounds.size.height - 40, 40, 40);
        _view04.frame = CGRectMake(self.bounds.size.width - 40, self.bounds.size.height - 40, 40, 40);
    }];
    
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
