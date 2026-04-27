//
//  VCFirst.h
//  UI_test
//
//  Created by lose_sea on 2026/4/27.
//

#import <UIKit/UIKit.h>
#import <Masonry/Masonry.h>
#import "VCSecond.h"

NS_ASSUME_NONNULL_BEGIN

@interface VCFirst : UIViewController <VCSecondDeleagate>
@property (nonatomic) UITextField* textField;
@property (nonatomic) UILabel* label;
@property (nonatomic) NSString* receiveText; 
@end

NS_ASSUME_NONNULL_END
