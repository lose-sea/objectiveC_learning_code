//
//  People+Info.m
//  Runtime
//
//  Created by lose_sea on 2026/10/29.
//

#import "People+Info.h"
# import <objc/runtime.h>
@implementation People (Info)

static char ageKey;

- (void) setAge: (NSInteger) age {
    objc_setAssociatedObject(self,
                             &ageKey,
                             @(age),
                             OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSInteger) age {
    NSNumber* number = objc_getAssociatedObject(self, &ageKey);
    return number.integerValue; 
}
@end
