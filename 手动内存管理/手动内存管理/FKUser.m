//
//  FKUser.m
//  手动内存管理
//
//  Created by lose_sea on 2026/3/23.
//

#import "FKUser.h"

@implementation FKUser
- (void) setItem: (FKItem*) item {
    if (_item != item) {
        [_item release]; 
        [item retain];
        _item = item;
    }
}
- (FKItem*) item {
    return _item;
}
- (void) dealloc {
    [_item release];
    NSLog(@"开始销毁FKUser对象");
    [super dealloc];
}
@end
