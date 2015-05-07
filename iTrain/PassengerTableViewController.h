//
//  PassengerTableViewController.h
//  iTrain
//
//  Created by Camille Long on 5/2/15.
//  Copyright (c) 2015 Camille Long. All rights reserved.
//

//#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PassengerTableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) IBOutlet UITableView *tableView;

@end
