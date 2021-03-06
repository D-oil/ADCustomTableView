//
//  ViewController.m
//  ADCustomTableView
//
//  Created by andong on 2017/3/8.
//  Copyright © 2017年 AD.org. All rights reserved.
//

#import "ViewController.h"
#import "ADCustomTableView.h"

@interface ViewController () <UITableViewDataSource,UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 10;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    EventTableViewCell *cell;
    cell = [tableView dequeueReusableCellWithIdentifier:@"eventCell"];
    if (indexPath.row == 1) {
        [cell setLeftDoorState:doorState_null];
        [cell setRightDoorState:doorState_error];
        NSString *filePath = [[NSBundle mainBundle] pathForResource:@"Ring Activity Zone" ofType:@"gif"];
        NSData *data = [[NSData alloc] initWithContentsOfFile:filePath];
        [cell playgifWithData:data];
    } else {
        [cell setLeftDoorState:doorState_closed];
        [cell setRightDoorState:doorState_closed];
        [cell playgifWithData:nil];
    }
    return cell;
}

//header
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 40;
}

- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    eventHeaderView *headView = [[eventHeaderView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 40)];
    [headView setDateTimeLabelText:@"Today"];
    return headView;
}

//delete cell

- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}


- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
    }
}







@end
