//
//  Person.h
//  Runtime
//
//  Created by lose_sea on 2026/10/27.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
#import "Dancer.h"

NS_ASSUME_NONNULL_BEGIN

@interface Person : Animal
@property (nonatomic, strong) Dancer* dancer;

- (void) eat;
- (void) run;
@end

NS_ASSUME_NONNULL_END
