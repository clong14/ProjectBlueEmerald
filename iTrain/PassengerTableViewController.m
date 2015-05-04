//
//  PassengerTableViewController.m
//  iTrain
//
//  Created by Camille Long on 5/2/15.
//  Copyright (c) 2015 Camille Long. All rights reserved.
//

#import "PassengerTableViewController.h"

@implementation PassengerTableViewController

- (id)init{
    
    PassengerTableViewController *passvc = [[PassengerTableViewController alloc] initWithStyle:UITableViewStylePlain];
    return passvc;
}

- (void)loadView{
    
    [super loadView];
    self.passengerOptions = {"My Trips", "Train Schedules", "Check In", "Purchase Tickets"};

}

-(NSInteger) countOfPassengerOptions{
    
    return 4;
}



@end
