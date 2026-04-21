//
//  VCFirst.h
//  多界面传值
//
//  Created by lose_sea on 2026/4/21.
//

#import <UIKit/UIKit.h>
#import "VCSecond.h"

NS_ASSUME_NONNULL_BEGIN

@interface VCFirst : UIViewController <VCSecondDelegte>

- (void) changeColor:(UIColor *)color; 

@end

NS_ASSUME_NONNULL_END
