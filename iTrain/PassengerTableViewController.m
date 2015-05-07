//
//  PassengerTableViewController.m
//  iTrain
//
//  Created by Camille Long on 5/2/15.
//  Copyright (c) 2015 Camille Long. All rights reserved.
//

#import "PassengerTableViewController.h"
#import "PassengerSelectionViewController.h"

@interface PassengerTableViewController()

@end

@implementation PassengerTableViewController{
    NSArray *passenger_options;
}

@synthesize tableView;

- (void)viewDidLoad{
    [super viewDidLoad];
    passenger_options = [NSArray arrayWithObjects:@"My Trips", @"Train Schedules", @"Check In", @"Purchase Tickets", nil];
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [passenger_options count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *passenger_options_identifier = @"passenger_options";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:passenger_options_identifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault reuseIdentifier:passenger_options_identifier];
    }
    
    cell.textLabel.text = [passenger_options objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"show_selection_detail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        PassengerSelectionViewController *destViewController = segue.destinationViewController;
        destViewController.selection_name = [passenger_options objectAtIndex:indexPath.row];
    }
}

@end