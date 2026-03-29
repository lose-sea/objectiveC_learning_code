//
//  Demand.h
//  test111
//
//  Created by lose_sea on 2026/3/26.
//
#import<Foundation/Foundation.h>
#ifndef Demand_h
#define Demand_h
@protocol Demand
@required
- (void) calculate;
@optional
- (void) unnecessary; 
@end

#endif /* Demand_h */
