//
//  ProductCell.m
//  self_cell
//
//  Created by lose_sea on 2026/5/11.
//

#import "ProductCell.h"

@implementation ProductCell

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle: style reuseIdentifier: reuseIdentifier];
    if (self) {
        self.titleLabel = [[UILabel alloc] init];
        self.titleLabel.textColor = [UIColor redColor];
        self.titleLabel.frame = CGRectMake(0, 0, 200, self.bounds.size.height);
        // contentView 是UITableView内部的容器视图, 应该把所有的UI元素加入到它里面
        [self.contentView addSubview: self.titleLabel];
    }
    return self;
}


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


@end
