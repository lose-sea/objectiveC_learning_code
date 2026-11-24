//
//  KVCMutableArray.h
//  KVC, KVO
//
//  Created by lose_sea on 2026/11/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KVCMutableArray : NSObject
@property (nonatomic, strong) NSMutableArray* array;

- (NSUInteger) countOfArray;
- (id) objectInArrayAtIndex:(NSUInteger)index;
- (void) insertObjectFromArrayAtIndex: (NSUInteger) index;
- (void) removeObjectFromArrayAtIndex:(NSUInteger)index;
- (void) replaceObjectInArrayAtIndex:(NSUInteger)index withObject:(id)object; 
@end

NS_ASSUME_NONNULL_END
