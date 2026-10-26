//
//  User.h
//  集合 (NSSet 与 NSMutableSet)
//
//  Created by lose_sea on 2026/3/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface User : NSObject
@property (nonatomic, copy) NSString* name;
@property (nonatomic, copy) NSString* pass;
- (id) initWithName: (NSString*) name pass: (NSString*) pass; 
@end

NS_ASSUME_NONNULL_END
