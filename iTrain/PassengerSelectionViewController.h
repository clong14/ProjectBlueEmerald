//
//  PassengerSelectionViewController.h
//  iTrain
//
//  Created by Steven Tran on 5/6/15.
//  Copyright (c) 2015 Camille Long. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PassengerSelectionViewController : UIViewController

@property (nonatomic, strong) IBOutlet UILabel *selection_label;
@property (nonatomic, strong) NSString *selection_name;
@property (nonatomic, weak) IBOutlet UITextField *txtUsername;
@property (nonatomic, weak) IBOutlet UITextField *txtPassword;
- (IBAction)signinClicked:(id)sender;
@end
