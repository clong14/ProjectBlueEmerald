//
//  StaffTableViewController.m
//  iTrain
//
//  Created by Camille on 5/7/15.
//  Copyright (c) 2015 Camille Long. All rights reserved.
//

#import "StaffTableViewController.h"

@implementation StaffTableViewController

NSArray *staff_options;


- (void)viewDidLoad{
    [super viewDidLoad];
    staff_options = [NSArray arrayWithObjects:@"Check In", @"Maintenance Reports", @"Accident Reports",  nil];
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [staff_options count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *staff_options_identifier = @"staff_options";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:staff_options_identifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault reuseIdentifier:staff_options_identifier];
    }
    
    cell.textLabel.text = [staff_options objectAtIndex:indexPath.row];
    
    return cell;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    StaffSelectionViewController *destViewController;
    NSString *option = @"staffOption";
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
            
        default:
            optnum = @"0";
            break;
    };
    
    NSString *nextvc = [option stringByAppendingString:optnum];
    NSLog(@"nextvc = %@", nextvc);
    destViewController = [[StaffSelectionViewController alloc] initWithNibName:nextvc bundle:nil];
    [self.navigationController pushViewController:destViewController animated:YES];
}

@end