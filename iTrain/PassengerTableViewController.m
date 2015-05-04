//
//  PassengerTableViewController.m
//  iTrain
//
//  Created by Camille Long on 5/2/15.
//  Copyright (c) 2015 Camille Long. All rights reserved.
//

#import "PassengerTableViewController.h"
@implementation PassengerTableViewController{
    NSArray *tableData;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Initialize table data
    tableData = [NSArray arrayWithObjects:@"My Trips", @"Train Schedules", @"Check In", @"Purchase Tickets", x`nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    return cell;
}

@end
//@implementation PassengerTableViewController
//
//- (id)init{
//    
//    PassengerTableViewController *passvc = [[PassengerTableViewController alloc] initWithStyle:UITableViewStylePlain];
//    return passvc;
//}
//
//- (void)loadView{
//    
//    [super loadView];
//    self.passengerOptions = [[NSArray alloc] initWithObjects: @"My Trips", @"Train Schedules", @"Check In", @"Purchase Tickets"];
//
//}
//
//-(NSInteger) countOfPassengerOptions{
//    
//    return 4;
//}
