//
//  PassengerTableViewController.h
//  iTrain
//
//  Created by Camille Long on 5/2/15.
//  Copyright (c) 2015 Camille Long. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@interface PassengerTableViewController : UITableViewController

@property(nonatomic) NSArray *passengerOptions;
@property (nonatomic, retain) UITableView *tableView;

@end
