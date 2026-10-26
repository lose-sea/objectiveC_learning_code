//
//  StudentCell.h
//  Data-DrivenCell
//
//  Created by lose_sea on 2026/5/13.
//

#import <UIKit/UIKit.h>
#import "Student.h"

NS_ASSUME_NONNULL_BEGIN

@interface StudentCell : UITableViewCell
- (void) setData: (Student*) student; 
@end

NS_ASSUME_NONNULL_END
