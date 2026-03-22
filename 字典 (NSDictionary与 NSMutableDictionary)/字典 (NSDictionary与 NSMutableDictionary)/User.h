//
//  User.h
//  字典 (NSDictionary与 NSMutableDictionary)
//
//  Created by lose_sea on 2026/3/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface User : NSObject <NSCopying> 
@property (nonatomic, copy) NSString* name;
@property (nonatomic, copy) NSString* pass;
- (id) initWithName: (NSString*) name Pass: (NSString*) pass; 
@end

NS_ASSUME_NONNULL_END
