//
//  PassengerTableViewController.m
//  iTrain
//
//  Created by Camille Long on 5/2/15.
//  Copyright (c) 2015 Camille Long. All rights reserved.
//

#import "PassengerTableViewController.h"
#import "PassengerSelectionViewController.h"
@import UIKit;

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

//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    PassengerSelectionViewController *destViewController;
//    
//    if ([segue.identifier isEqualToString:@"show_selection_detail"]) {
//        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
//        NSLog(@"Index Clicked: %@ \n %lu", indexPath, (unsigned long)[indexPath indexAtPosition:1]);
//        
//        if((unsigned long)[indexPath indexAtPosition:1] == 0){
//            destViewController = [[PassengerSelectionViewController alloc] initWithNibName:@"passengerOption0" bundle:nil];
//        }
//        
//        destViewController = segue.destinationViewController;
//        destViewController.selection_name = [passenger_options objectAtIndex:indexPath.row];
//    }
//}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    PassengerSelectionViewController *destViewController;
    NSString *option = @"passengerOption";
    NSString *optnum;
    NSLog(@"Index Clicked: %lu", (long)indexPath.row);
    
    switch ((long)indexPath.row) {
        case 0:
            optnum = @"0";
            break;
        case 1:
            optnum = @"1";
            break;
        case 2:
            optnum = @"2";
            break;
        case 3:
            optnum = @"3";
            break;
            
        default:
            optnum = @"0";
            break;
    };
    
    NSString *nextvc = [option stringByAppendingString:optnum];
    NSLog(@"nextvc = %@", nextvc);
    destViewController = [[PassengerSelectionViewController alloc] initWithNibName:nextvc bundle:nil];
    [self.navigationController pushViewController:destViewController animated:YES];
}

@end