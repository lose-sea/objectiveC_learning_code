//
//  OrderDelegate.h
//  委托
//
//  Created by lose_sea on 2026/3/21.
//

#ifndef OrderDelegate_h
#define OrderDelegate_h
@protocol OrderDelagate <NSObject>
- (void) didReceiveOrder: (NSString*) food;
@end 


#endif /* OrderDelegate_h */
