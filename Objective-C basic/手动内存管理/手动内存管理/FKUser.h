//
//  FKUser.h
//  手动内存管理
//
//  Created by lose_sea on 2026/3/23.
//

#import <Foundation/Foundation.h>
#import "FKItem.h"
NS_ASSUME_NONNULL_BEGIN

@interface FKUser : NSObject {
    FKItem* _item;
}
- (void) setItem: (FKItem*) item;
- (FKItem*) item;
@end

NS_ASSUME_NONNULL_END
