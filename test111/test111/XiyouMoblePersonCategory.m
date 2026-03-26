//
//  XiyouMobilePerson + Category.m
//  test111
//
//  Created by lose_sea on 2026/3/26.
//

#import "XiyouMobilePersonCategory.h"

@implementation XiyouMobilePerson (Category)
- (NSDictionary*) dabao {
    NSDictionary* dic = [NSDictionary dictionaryWithObjects:
                         [NSArray arrayWithObjects:
                          [NSNumber numberWithInt: self->_iOS],
                          [NSNumber numberWithInt: self->_web],
                          self->_android? : [NSNull null],
                          self->_serve? : [NSNull null], 
                          nil]
                                                    forKeys:
                         [NSArray arrayWithObjects: @"iOS", @"web", @"android", @"serve", nil]];
    return dic;
}
- (NSDictionary*) toDictionary {
    NSDictionary* dic = @{
        @"name": self.name?: [NSNull null],
        @"age": @(self.age),
        @"iOS": @(self.iOS),
        @"web": @(self.web),
        @"android": self.android?: [NSNull null],
        @"serve": self.serve?: [NSNull null]
    };
    return dic;
}
@end
