//
//  XiyouMobilePerson + Category.m
//  test111
//
//  Created by lose_sea on 2026/3/26.
//

#import "XiyouMobilePersonCategory.h"

@implementation XiyouMoblePerson (Category)
- (NSDictionary*) dabao {
    NSDictionary* dic = [NSDictionary dictionaryWithObjects:
                         [NSArray arrayWithObjects:
                          [NSNumber numberWithInt: self->_iOS],
                          [NSNumber numberWithInt: self->_web],
                          [NSString stringWithString: self->_android],
                          [NSString stringWithString: self->_serve], nil]
                                                    forKeys:
                         [NSArray arrayWithObjects: @"iOS", @"web", @"android", @"serve", nil]];
    return dic;
}
@end
