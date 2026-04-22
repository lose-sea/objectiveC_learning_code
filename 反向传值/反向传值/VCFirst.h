//
//  VCFirst.h
//  反向传值
//
//  Created by lose_sea on 2026/4/21.
//

#import <UIKit/UIKit.h>
#import "VCSecond.h"

NS_ASSUME_NONNULL_BEGIN

@interface VCFirst : UIViewController <VCSecondDelegate> 
@property (nonatomic) UILabel* label;
//@property (nonatomic) NSString* text; 
@end

NS_ASSUME_NONNULL_END
