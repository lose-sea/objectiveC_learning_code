//
//  VCSecond.h
//  UI_test
//
//  Created by lose_sea on 2026/4/27.
//

#import <UIKit/UIKit.h>
#import <Masonry/Masonry.h> 

NS_ASSUME_NONNULL_BEGIN

@protocol VCSecondDeleagate <NSObject>
- (void) vcSecond: (id)vcSecond didSendText: (NSString* )text;
@end

@interface VCSecond : UIViewController
@property (nonatomic) id<VCSecondDeleagate> delegate; 
@property (nonatomic) NSString* recesiveText;
@property (nonatomic) UITextField* textField;
@end

NS_ASSUME_NONNULL_END
