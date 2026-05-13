//
//  StudentCell.m
//  Data-DrivenCell
//
//  Created by lose_sea on 2026/5/13.
//

#import "StudentCell.h"

@interface StudentCell ()

@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *scoreLabel;
@property (nonatomic, strong) UIButton *likeButton;

@end

@implementation StudentCell



- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (void) setupUI {
    // 姓名标签
        self.nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 10, 150, 30)];
        self.nameLabel.font = [UIFont systemFontOfSize:16];
        [self.contentView addSubview:self.nameLabel];
        
        // 分数标签
        self.scoreLabel = [[UILabel alloc] initWithFrame:CGRectMake(180, 10, 100, 30)];
        self.scoreLabel.font = [UIFont systemFontOfSize:14];
        [self.contentView addSubview:self.scoreLabel];
        
        // 点赞按钮
        self.likeButton = [UIButton buttonWithType:UIButtonTypeSystem];
        self.likeButton.frame = CGRectMake(300, 10, 60, 30);
        [self.likeButton setTitle:@"点赞" forState:UIControlStateNormal];
        [self.likeButton setTitle:@"已赞" forState:UIControlStateSelected];
        [self.likeButton addTarget:self action:@selector(likeButtonTapped) forControlEvents:UIControlEventTouchUpInside];
        [self.contentView addSubview:self.likeButton];
}



// 按钮点击事件
- (void)likeButtonTapped {
    // 注意：这里不直接修改数据，而是通过代理或通知告诉 Controller
    // 为了简化，我们发送一个通知
    [[NSNotificationCenter defaultCenter] postNotificationName:@"CellLikeButtonTapped" object:self];
}





// 核心：数据驱动方法 - 你给我什么数据，我就显示什么样子
- (void)setData:(Student *)student {
    // 显示姓名
    self.nameLabel.text = student.name;
    
    // 根据分数显示不同颜色和文字
    if (student.score >= 90) {
        self.scoreLabel.text = [NSString stringWithFormat:@"%ld分 优秀", student.score];
        self.scoreLabel.textColor = [UIColor redColor];
    } else if (student.score >= 60) {
        self.scoreLabel.text = [NSString stringWithFormat:@"%ld分 及格", student.score];
        self.scoreLabel.textColor = [UIColor greenColor];
    } else {
        self.scoreLabel.text = [NSString stringWithFormat:@"%ld分 不及格", student.score];
        self.scoreLabel.textColor = [UIColor grayColor];
    }
    
    // 显示点赞状态
    self.likeButton.selected = student.isLiked;
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
