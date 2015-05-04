//
//  PassengerTableViewController.h
//  iTrain
//
//  Created by Camille Long on 5/2/15.
//  Copyright (c) 2015 Camille Long. All rights reserved.
//

#import <Foundation/Foundation.h>
// @import UIKit;
#import <UIKit/UIKit.h>

// @interface PassengerTableViewController : UITableViewController
@interface PassengerTableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>

@property(nonatomic) NSArray *passengerOptions;
@property (nonatomic, retain) UITableView *tableView;

@end
