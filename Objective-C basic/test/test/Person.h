//
//  Person.h
//  test
//
//  Created by lose_sea on 2026/3/18.
//

#import <Foundation/Foundation.h>
#import "Sayhello.h"
NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject 
@property (nonatomic, copy) NSString* name;
@property (nonatomic, assign) int age;
@end

NS_ASSUME_NONNULL_END
