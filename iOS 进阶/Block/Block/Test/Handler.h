//
//  Handler.h
//  Block
//
//  Created by lose_sea on 2026/11/11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Handler : NSObject
- (void)addNumber:(int)number1 withNumber:(int)number2 andCompletionHandler:(void(^)(int  result))completionHandler;
@end

NS_ASSUME_NONNULL_END
