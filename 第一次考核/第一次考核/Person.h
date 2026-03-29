//
//  People.h
//  test111
//
//  Created by lose_sea on 2026/3/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
@property (nonatomic, copy) NSString* name;
@property (nonatomic, assign) int age;
- (instancetype) initWithName: (NSString*) Name andAge: (int)Age;
- (NSString *) descriptionName;
- (NSString *) descriptionAge;
@end

NS_ASSUME_NONNULL_END
