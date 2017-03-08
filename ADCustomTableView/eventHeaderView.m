//
//  eventHeaderView.m
//  ADCustomTableView
//
//  Created by andong on 2017/3/8.
//  Copyright © 2017年 AD.org. All rights reserved.
//

#import "eventHeaderView.h"

@implementation eventHeaderView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
       [self commonInit];
    }
    return self;
}

- (void)commonInit
{
    self.backgroundColor = [UIColor colorWithRed:243/255.0 green:243/255.0 blue:243/255.0 alpha:1.0];
    self.dateTimeLabel = [UILabel new];
    [self addSubview:self.dateTimeLabel];
}

- (void)setDateTimeLabelText:(NSString *)dateTimeText
{
    self.dateTimeLabel.text = dateTimeText;
    [self.dateTimeLabel sizeToFit];
    [self setNeedsLayout];
}

- (void)layoutSubviews
{
    [self.dateTimeLabel setCenter:CGPointMake( self.frame.size.width / 10, self.frame.size.height / 2)];
}


@end
