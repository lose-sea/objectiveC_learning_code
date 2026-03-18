//
//  FKUser.h
//  test
//
//  Created by lose_sea on 2026/3/18.
//

#import <Foundation/Foundation.h>
#import "Sayhello.h"

NS_ASSUME_NONNULL_BEGIN

@interface FKUser : NSObject <Sayhello>
@property NSString* idstr;
@property NSString* name;
- (BOOL) isEqual: Objectt;
- (id) initWithId: (NSString*) idstr andName: (NSString*) name;
@end

NS_ASSUME_NONNULL_END
