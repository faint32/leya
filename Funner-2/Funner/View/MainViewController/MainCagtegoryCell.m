//
//  MainCagtegoryCell.m
//  Funner
//
//  Created by highjump on 15-1-25.
//
//

#import "MainCagtegoryCell.h"
#import "CategoryData.h"
#import "UIImageView+WebCache.h"

@interface MainCagtegoryCell()

@property (weak, nonatomic) IBOutlet UIView *mViewHobby;
@property (weak, nonatomic) IBOutlet UILabel *mLblDescription;
@property (weak, nonatomic) IBOutlet UIImageView *mImgViewBack;

@end

@implementation MainCagtegoryCell

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
    UIColor *backgroundColor = self.mViewHobby.backgroundColor;
    [super setHighlighted:highlighted animated:animated];
    self.mViewHobby.backgroundColor = backgroundColor;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    UIColor *backgroundColor = self.mViewHobby.backgroundColor;
    [super setSelected:selected animated:animated];
    self.mViewHobby.backgroundColor = backgroundColor;
}

- (void)showCategoryInfo:(CategoryData *)cData {
    
    [super showCategoryInfo:cData];

    [self.mLblDescription setText:cData.desc];
    
    // show category icon
    NSString *strName = [NSString stringWithFormat:@"%@_bg.png", cData.name];
    UIImage *imgIcon = [UIImage imageNamed:strName];
    
    if (imgIcon) {
        [self.mImgViewBack setImage:imgIcon];
    }
    else {
        [self.mImgViewBack sd_setImageWithURL:[NSURL URLWithString:cData.imgBackground.url]
                             placeholderImage:[UIImage imageNamed:@"home_hobby_pic_sample.png"]];
    }
}

@end
