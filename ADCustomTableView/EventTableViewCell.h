//
//  EventTableViewCell.h
//  ADCustomTableView
//
//  Created by andong on 2017/3/8.
//  Copyright © 2017年 AD.org. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, doorState) {
    doorState_null,
    doorState_closed,
    doorState_halfopened,
    doorState_opened,
    doorState_error
};

@interface EventTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *timeLineImageView;

@property (weak, nonatomic) IBOutlet UILabel *cameraNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *eventInfoLabel;

@property (weak, nonatomic) IBOutlet UIImageView *leftDoorImageView;
@property (weak, nonatomic) IBOutlet UIImageView *rightDoorImageView;
@property (weak, nonatomic) IBOutlet UIView *gitView;
@property (weak, nonatomic) IBOutlet UIWebView *gifWebView;


- (void)setCameraNameText:(NSString *)nameText;
- (void)setCameratimeLabel:(NSString *)timeText;
- (void)setCameraEventInfo:(NSString *)eventInfo;

//if load gif data or download gif success cell play gif;
- (void)playgifWithData:(NSData *)gifData;

- (void)setLeftDoorState:(doorState)leftDoorState;
- (void)setRightDoorState:(doorState)rigthDoorState;


@end
