//
//  Student.h
//  Data-DrivenCell
//
//  Created by lose_sea on 2026/5/13.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : UIViewController

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger score;
@property (nonatomic, assign) BOOL isLiked;  // 是否已点赞

- (instancetype)initWithName:(NSString *)name score:(NSInteger)score;

@end

NS_ASSUME_NONNULL_END
