//
//  FKUser.m
//  test
//
//  Created by lose_sea on 2026/3/18.
//

#import "FKUser.h"

@implementation FKUser
- (id) initWithId:(NSString *)idstr andName:(NSString *)name {
    _idstr =  idstr;
    _name = name;
    return self; 
}
- (BOOL) isEqual: (id) other {
    if (self == other) {
        return YES;
    } else if (other != nil && [other isMemberOfClass: FKUser.class]) {
        FKUser* target = (FKUser*) other;
        return [self.name isEqual: target.name];
    }
    return NO;
}
//- (void) sayhello {
//    NSLog(@"hello"); 
//}
@end
