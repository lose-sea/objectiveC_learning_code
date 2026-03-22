//
//  student.m
//  委托
//
//  Created by lose_sea on 2026/3/22.
//

#import "student.h"

@implementation student
- (void) say: (NSString*) thing {
    NSLog(@"student 收到消息,对老师说: %@", thing); 
}
@end
