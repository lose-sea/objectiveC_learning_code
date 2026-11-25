//
//  Children.h
//  KVC, KVO
//
//  Created by lose_sea on 2026/11/23.
//

#import <Foundation/Foundation.h>
#import "KVCMutableArray.h"

NS_ASSUME_NONNULL_BEGIN

@interface Children : NSObject

@property (nonatomic, strong) NSString* firstName;

@property (nonatomic,  strong) NSString* lastName;

@property (nonatomic, strong) NSString* fullName;

@property (nonatomic, assign) NSUInteger age;

@property (nonatomic, strong) KVCMutableArray* cousins;

@end

NS_ASSUME_NONNULL_END
