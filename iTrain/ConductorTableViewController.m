//
//  ConductorTableViewController.m
//  iTrain
//
//  Created by Camille on 5/7/15.
//  Copyright (c) 2015 Camille Long. All rights reserved.
//

#import "ConductorTableViewController.h"

@interface ConductorTableViewController()

@end

@implementation ConductorTableViewController
{
    NSArray *conductor_options;
}

- (void)viewDidLoad{
    [super viewDidLoad];
    conductor_options = [NSArray arrayWithObjects:@"My Trains", @"Train Schedules", @"Add a Notification", nil];
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [conductor_options count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *conductor_options_identifier = @"conductor_options";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:conductor_options_identifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault reuseIdentifier:conductor_options_identifier];
    }
    
    cell.textLabel.text = [conductor_options objectAtIndex:indexPath.row];
    
    return cell;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ConductorSelectionViewController *destViewController;
    NSString *option = @"conductorOption";
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
    destViewController = [[ConductorSelectionViewController alloc] initWithNibName:nextvc bundle:nil];
    [self.navigationController pushViewController:destViewController animated:YES];
}

@end