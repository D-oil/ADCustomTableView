//
//  EventTableViewCell.m
//  ADCustomTableView
//
//  Created by andong on 2017/3/8.
//  Copyright © 2017年 AD.org. All rights reserved.
//

#import "EventTableViewCell.h"

@interface EventTableViewCell ()

@property (nonatomic,strong) NSData *gitData;

@end

@implementation EventTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

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
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)playgifWithData:(NSData *)gifData
{
    if (gifData != nil && self.gitData != gifData) {
        [self.gifWebView setHidden:NO];
        [self.gifWebView loadData:gifData MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];
        self.gifWebView.backgroundColor = [UIColor clearColor];
        self.gifWebView.opaque = NO;
        self.gitData = gifData;
    } else {
        [self.gifWebView setHidden:YES];
    }
}

- (void)setLeftDoorState:(doorState)leftDoorState
{
    NSString *imageStr = nil;
    switch (leftDoorState) {
        case doorState_null:
            imageStr = @"";
            break;
        case doorState_closed:
            imageStr = @"garage_l_small";
            break;
        case doorState_halfopened:
            imageStr = @"garage_l_small_halfopened";
            break;
        case doorState_opened:
            imageStr = @"garage_l_small_opened";
            break;
        case doorState_error:
            imageStr = @"garage_l_small alert";
            break;
    }
    
    [self.leftDoorImageView setImage:[UIImage imageNamed:imageStr]];
}
- (void)setRightDoorState:(doorState)rigthDoorState
{
    NSString *imageStr = nil;
    switch (rigthDoorState) {
        case doorState_null:
            imageStr = @"";
            break;
        case doorState_closed:
            imageStr = @"garage_r_small";
            break;
        case doorState_halfopened:
            imageStr = @"garage_r_small_halfopened";
            break;
        case doorState_opened:
            imageStr = @"garage_r_small_opened";
            break;
        case doorState_error:
            imageStr = @"garage_r_small_alert";
            break;
    }
    
    [self.leftDoorImageView setImage:[UIImage imageNamed:imageStr]];
}

@end
