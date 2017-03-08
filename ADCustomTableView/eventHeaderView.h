//
//  eventHeaderView.h
//  ADCustomTableView
//
//  Created by andong on 2017/3/8.
//  Copyright © 2017年 AD.org. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface eventHeaderView : UIView

@property (nonatomic,strong) UILabel *dateTimeLabel;

- (void)setDateTimeLabelText:(NSString *)dateTimeText;

@end
