//
//  Say.h
//  委托
//
//  Created by lose_sea on 2026/3/22.
//

#ifndef Say_h
#define Say_h
@protocol Say <NSObject> 
- (void) say: (NSString*) thing;
@end 
#endif /* Say_h */
