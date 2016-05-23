//
//  LQSMessageTableViewCell.m
//  myOrgForum
//
//  Created by SkyAndSea on 16/5/20.
//  Copyright © 2016年 SkyAndSea. All rights reserved.
//

#import "LQSMessageTableViewCell.h"

@interface LQSMessageTableViewCell()
{
    UIImageView *_imageView;
    UILabel *_label;
    LQSMessageDataModel *_model;


}


@end

@implementation LQSMessageTableViewCell

- (void)loadSubViews
{
    _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    [self.contentView addSubview:_imageView];
    _label = [[UILabel alloc] initWithFrame:CGRectZero];
    [self.contentView addSubview:_label];

}

- (void)PushesmessageTableViewModel:(LQSMessageDataModel *)model
{

    _model = model;
    _imageView.image = [UIImage imageNamed:@""];
    _label.text = model.title;
    [self layoutIfNeeded];

}



- (void)layoutSubviews
{
    [super layoutSubviews];
    _imageView.frame = CGRectMake(LQSMargin, 0, self.width, self.height);
    _label.frame = CGRectMake(LQSMargin *2 + 50, 0, self.width - LQSMargin * 2 - 50, self.height);
    _label.textAlignment = NSTextAlignmentLeft;


}




@end
